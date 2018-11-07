#include "Wire.h"
#include "I2Cdev.h"
#include "MPU6050_6Axis_MotionApps20.h"
#include <ros.h>
#include <rosserial_arduino/Adc.h>

MPU6050 accelgyro(0x68);

ros::NodeHandle nh;
rosserial_arduino::Adc adc_msg;
ros::Publisher pub("adc", &adc_msg);
//Messenger Messenger_Handler = Messenger();

void setup() {
  // put your setup code here, to run once:
Serial.begin(115200);

nh.initNode();
nh.advertise(pub);

//SetupEncoders();
//SetupMotors();
//SetupUltrasonic();
Setup_MPU6050();
//SetupReset();
//Messenger_Handler.attach(onMssageCompleted);
}

void loop() {
  // put your main code here, to run repeatedly:
Update_MPU6050();
}

void Setup_MPU6050()
{
  Wire.begin();
  Serial.println("Initializing ....");
  accelgyro.initialize();
  Serial.println("Testing connections..");
  Serial.println(accelgyro.testConnection() ? "MPU6050 connection successful"
   : "MPU 6050 connection failed!");
}

void Update_MPU6050()
{
  int16_t ax, ay, az;
  int16_t gx, gy, gz;
  accelgyro.getMotion6(&ax, &ay, &az, &gx, &gy, &gz);

  Serial.print("i");Serial.print("\t");
  Serial.print(ax);Serial.print("\t");
  Serial.print(ay);Serial.print("\t");
  Serial.print(az);Serial.print("\t");
  Serial.print(gx);Serial.print("\t");
  Serial.print(gy);Serial.print("\t");
  Serial.print(gz);Serial.print("\n");

  adc_msg.adc0 = ax;
  adc_msg.adc1 = ay;
  pub.publish(&adc_msg);
  nh.spinOnce();
  delay(10);
  
  
}
