DateTime mdate;
    string date;
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        mdate = DateTime.Now;
        //lblMessage.Text = mdate.ToLongDateString();


        date = mdate.Year + "-" + mdate.Month + "-" + mdate.Day+" "+mdate.Hour+":"+mdate.Minute+":"+mdate.Second;

        lblMessage.Text = date.ToString();
    }