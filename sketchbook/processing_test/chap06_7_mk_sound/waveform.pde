class WaveformRenderer implements AudioListener
{
  private float[] left;
  private float[] right;

  WaveformRenderer()
  {
    left = null;
    right = null;
  }

  public synchronized void samples(float[] samp)
  {
    left = samp;
  }

  public synchronized void samples(float[] sampL, float[] sampR)
  {
    left = sampL;
    right = sampR;
  }

  synchronized void draw()
  {
    // we've got a stereo signal if right or left are not null
    if ( left != null && right != null )
    {
      noFill();
      stroke(255);
      beginShape();
      for ( int i = 0; i < left.length; i++ )
      {
        vertex(i, height/4 + left[i]*50);
      }
      endShape();
      beginShape();
      for ( int i = 0; i < right.length; i++ )
      {
        vertex(i, 3*(height/4) + right[i]*50);
      }
      endShape();
    }
    else if ( left != null )
    {
      noFill();
      stroke(255);
      beginShape();
      for ( int i = 0; i < left.length; i++ )
      {
        vertex(i, height/2 + left[i]*50);
      }
      endShape();
    }
  }
}
