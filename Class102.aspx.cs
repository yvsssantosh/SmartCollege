using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Class102 : System.Web.UI.Page
{
    const string fileName = "AppSettings.dat"; //File storing default values
    const string fileLightsManual = "AppManualSettings.dat"; //File storing manual values of light ON OFF
    float temperature; //Variable for class temp
    int rhvalue; // Variable for class pressure
    int voltage;//Variable for storing voltage
    bool occupancyStatus;//Variable for storing whether class is occupied or not
    bool lights, manualLights;//laght Variable for storing whether lights are ON or OFF in the class manualLights for storing 
    //ON or OFF value in AppManualSettings.dat 
    bool ac;//Variable for storing AC ON or OFF state.
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            WriteDefaultValues(); //Write default values to AppSettings.dat
            WriteLightsDefaultValues();//Write default values to AppManualSettings.dat 
            DisplayValues();//Read values written in AppSettings.dat file
        }
        rbOn.Enabled = true;
        rbOff.Enabled = true;

    }
    public  void WriteDefaultValues()//Writing to AppSettings.dat
    {
        using (BinaryWriter writer = new BinaryWriter(File.Open(fileName, FileMode.Create)))
        {
            writer.Write(185.50F); //Temperature
            writer.Write(125); // RH value - Pressure
            writer.Write(220); //Voltage
            writer.Write(true); //Occupancy
            if (manualLights)
                writer.Write(true);
            else
                writer.Write(false); //Lights
            writer.Write(true); //Ac
        }
    }
    public void DisplayValues() //Reading from AppSettings.dat
    {
        if (File.Exists(fileName))
        {
            using (BinaryReader reader = new BinaryReader(File.Open(fileName, FileMode.Open)))
            {
                temperature = reader.ReadSingle();
                rhvalue = reader.ReadInt32();
                voltage = reader.ReadInt32();
                occupancyStatus = reader.ReadBoolean();
                lights = reader.ReadBoolean();
                ac = reader.ReadBoolean();
            }
            if (occupancyStatus==true)
            {
                rbOn.Checked = true;
                rbOff.Checked = false;
                //rbOff.Enabled = false;
            }
            else
            {
                rbOff.Checked = true;
                rbOn.Checked = false;
                //rbOn.Enabled = false;
            }
            lblTempValue.Text = "   " +  temperature.ToString() + " F";
            lblRhValue.Text = "   " + rhvalue.ToString();
            lblVoltageValue.Text = "   " + voltage.ToString() + " Volts";
            if (lights == true)
            {
                
                lblLightsOnOff.Text = "On";
                lblLightsOnOff.BackColor = System.Drawing.Color.Red;
                lblLightsOnOff.Font.Size = 14;
                lblLightsOnOff.ForeColor = System.Drawing.Color.White;

                
            } 
            else
            {

                lblLightsOnOff.Text = "Off";
                lblLightsOnOff.BackColor = System.Drawing.Color.Blue;
                lblLightsOnOff.Font.Size = 14;
                lblLightsOnOff.ForeColor = System.Drawing.Color.White;
            }
            if (ac == true)
            {
                rbAcOn.Checked = true;
                rbAcOff.Checked = false;
                //rbAcOff.Enabled = false;
            }
            else
            {
                rbAcOff.Checked = true;
                rbAcOn.Checked = false;
                //rbAcOn.Enabled = false;
            }
        }
    }
    public static void WriteLightsManualOnValues()
    {
        using (BinaryWriter writer = new BinaryWriter(File.Open(fileLightsManual, FileMode.Create)))
        {
            writer.Write(true);
        }
    }
    public static void WriteLightsManualOffValues()
    {
        using (BinaryWriter writer = new BinaryWriter(File.Open(fileLightsManual, FileMode.Create)))
        {
            writer.Write(false);
        }
    }
    public static void WriteLightsDefaultValues() //Writing default values to AppManualSettings.dat for manually switchin On/Off Lights & fans.
    {
        using (BinaryWriter writer = new BinaryWriter(File.Open(fileLightsManual, FileMode.Create)))
        {
            writer.Write(false);
        }
    }

    public void DisplayManualValues() //Reading from AppSettings.dat
    {
        if (File.Exists(fileLightsManual))
        {
            using (BinaryReader reader = new BinaryReader(File.Open(fileLightsManual, FileMode.Open)))
            {
                manualLights = reader.ReadBoolean();
            }
        }
    }
    protected void rbFansManualOn_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void btnOnManualLights_Click(object sender, EventArgs e)
    {
        if (lights == false)
        {
            WriteLightsManualOnValues();
            DisplayManualValues();
            WriteDefaultValues();
            DisplayValues();
        }

    }
    protected void btnOffManualLights_Click(object sender, EventArgs e)
    {
        DisplayManualValues();
        if (manualLights == true)
        {
            WriteLightsManualOffValues(); //sets boolean value in AppManualSettings.dat to off
            DisplayManualValues();
            WriteDefaultValues();
            DisplayValues();
        }
    }
}