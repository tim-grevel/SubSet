void InitializeCards()
{
  for (int i = 0; i < 81; i++)
  {
    numbers[i] = i % 3;
    colors[i] = (i / 3) % 3;
    opacities[i] = (i / 9) % 3;
    shapes[i] = (i / 27) % 3;
  }
}
