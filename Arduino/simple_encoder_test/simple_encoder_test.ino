//Encoder pins definition

// Left encoder

#define Left_Encoder_PinA 2
#define Left_Encoder_PinB 4

volatile long Left_Encoder_Ticks = 0;

//Variable to read current state of left encoder pin
volatile bool LeftEncoderBSet;

//Right Encoder

#define Right_Encoder_PinA 3
#define Right_Encoder_PinB 5
volatile long Right_Encoder_Ticks = 0;
//Variable to read current state of right encoder pin
volatile bool RightEncoderBSet;


void setup()
{
	  //Init Serial port with 115200 buad rate
  Serial.begin(115200);  
	SetupEncoders();
}


void SetupEncoders()
{
  // Quadrature encoders
  // Left encoder
  pinMode(Left_Encoder_PinA, INPUT);      // sets pin A as input  
  pinMode(Left_Encoder_PinB, INPUT);      // sets pin B as input
  digitalWrite(Left_Encoder_PinA, LOW);
  digitalWrite(Left_Encoder_PinB, LOW);
  attachInterrupt(digitalPinToInterrupt(Left_Encoder_PinA), do_Left_Encoder, RISING);
  

  // Right encoder
  pinMode(Right_Encoder_PinA, INPUT_PULLUP);      // sets pin A as input
  pinMode(Right_Encoder_PinB, INPUT_PULLUP);      // sets pin B as input

  attachInterrupt(digitalPinToInterrupt(Right_Encoder_PinA), do_Right_Encoder, RISING); 

}

void loop()
{
	Update_Encoders();
}


void Update_Encoders()
{
   Serial.print("e");
  Serial.print("\t");
  Serial.print(Left_Encoder_Ticks);
  Serial.print("\t");
  Serial.print(Right_Encoder_Ticks);
  Serial.print("\n");
 }

 void do_Left_Encoder()
{
  /*LeftEncoderBSet = digitalRead(Left_Encoder_PinB);   // read the input pin
  Left_Encoder_Ticks -= LeftEncoderBSet ? -1 : +1;*/
  if (digitalRead(Left_Encoder_PinB) == digitalRead(Left_Encoder_PinA))
  {
    Left_Encoder_Ticks = Left_Encoder_Ticks - 1;
  }
  else
  {
    Left_Encoder_Ticks = Left_Encoder_Ticks + 1;
  }  
}

void do_Right_Encoder()
{
   RightEncoderBSet = digitalRead(Right_Encoder_PinB);   // read the input pin
  Right_Encoder_Ticks += RightEncoderBSet ? -1 : +1;
 }
