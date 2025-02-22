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

void TakeFromPile(int amount)
{
  while (amount > 0)
  {
    if (playOrder.size() == 0) return;
    int card = playOrder.get(0);
    playOrder.remove(0);
    shown.append(card);
    amount--;
  }
}
