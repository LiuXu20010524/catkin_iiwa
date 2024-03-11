#include <kuka/fri/ClientApplication.h>
#include <kuka/fri/LBRClient.h>
#include <kuka/fri/UdpConnection.h>

#include <iostream>
#include <vector>

#define DEFAULT_PORTID 30200

struct MyClient : public kuka::fri::LBRClient {
public:
    MyClient() : kuka::fri::LBRClient()
    {
        _torques = std::vector<double>(7, 0.);
    }

    void waitForCommand() override
    {
        kuka::fri::LBRClient::waitForCommand();

        if (robotState().getClientCommandMode() == kuka::fri::TORQUE)
            robotCommand().setTorque(_torques.data());
    }

    void command() override
    {
        kuka::fri::LBRClient::command();

        if (robotState().getClientCommandMode() == kuka::fri::TORQUE) {
            robotCommand().setTorque(_torques.data());
        }

        auto joints = robotState().getMeasuredJointPosition();
        for (int i = 0; i < 7; i++) {
            std::cout << joints[i] << " ";
        }
        std::cout << std::endl;

        robotCommand().setJointPosition(joints);
    }

protected:
    std::vector<double> _torques;
};

int main(int argc, char** argv)
{

    /***************************************************************************/
    /*                                                                         */
    /*   Place user Client Code here                                           */
    /*                                                                         */
    /***************************************************************************/

    // create new client
    MyClient client;

    /***************************************************************************/
    /*                                                                         */
    /*   Standard application structure                                        */
    /*   Configuration                                                         */
    /*                                                                         */
    /***************************************************************************/

    // create new udp connection
    kuka::fri::UdpConnection connection;

    // pass connection and client to a new FRI client application
    kuka::fri::ClientApplication app(connection, client);

    // Connect client application to KUKA Sunrise controller.
    // Parameter NULL means: repeat to the address, which sends the data
    app.connect(DEFAULT_PORTID, "192.170.10.2");

    /***************************************************************************/
    /*                                                                         */
    /*   Standard application structure                                        */
    /*   Execution mainloop                                                    */
    /*                                                                         */
    /***************************************************************************/

    // repeatedly call the step routine to receive and process FRI packets
    bool success = true;
    while (success) {
        success = app.step();
    }

    /***************************************************************************/
    /*                                                                         */
    /*   Standard application structure                                        */
    /*   Dispose                                                               */
    /*                                                                         */
    /***************************************************************************/

    // disconnect from controller
    app.disconnect();

    return 0;
}