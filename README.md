# microcontroller  
This repository is designed for transmitting data through Bluetooth Low Energy. It is based on the modification of the BLE_Throughput example code for BlueNRG2 development kit, providing a foundation for transmitting data efficiently over BLE connections. With the BLE_Throughput imported in WiSESTUDIO, developers can directly modify the throughput.c file to customize data transmission according to any requirements.  

1. Download the BlueNRG-1_2 DK 3.2.3 and import the BLE_Thoughput into WiSESTUDIO.
2. Open the throughput.c file in the User folder and use the src/throughput.c file in this repository to replace it.  
3. Select Build Project and then Rebuild All.  
4. Flash the BLE_Throughput_Server_unidirectional.bin generated using flasher.  
