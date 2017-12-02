public class Deque {

  private Card[] deck;
  private int front;
  private int back;

  public Deque() {
    deck = new Card[10];
  }

  public void addFirst(Card s) {
    if (s.equals(null)) {
      throw new NullPointerException();
    }
    if (isFull()) {
      resize();
    }
    front --;
    if (front < 0) {
      front = deck.length - 1;
    }
    deck[front] = s;
  }

  public void addLast(Card s) {
    if (s.equals(null)) {
      throw new NullPointerException();
    }
    if (isFull()) {
      resize();
    }
    deck[back] = s;
    back ++;
    if (back == deck.length) {
      back = 0;
    }
  }

  public Card removeFirst() {
    if (isEmpty()) {
      return null;
    }
    Card ret = deck[front];
    deck[front] = null;
    if (front < deck.length - 1) {
      front += 1;
    } else {
      front = 0;
    }
    return ret;
  }

  public Card removeLast() {
    if (isEmpty()) {
      return null;
    }
    Card ret;
    if (back > 0) {
      ret = deck[back - 1];
      back -= 1;
    } else {
      ret = deck[0];
      back = deck.length - 1;
    }
    deck[back] = null;
    return ret;
  }

  public Card getFirst() {
    if (isEmpty()) {
      return null;
    }
    return deck[front];
  }

  public Card getLast() {
    if (isEmpty()) {
      return null;
    }
    return deck[back];
  }

  private void resize() {
    Card[] newDeck = new Card[deck.length * 2 + 1];
    int i = 0;
    int f = front;
    while (i < deck.length) {
      if (f == deck.length) {
        f = 0;
      }
      newDeck[i] = deck[f];
      f++;
      i++;
    }
    front = 0;
    back = deck.length;
    deck = newDeck;
  }

  private boolean isFull() {
    for (int i = 0; i < deck.length; i ++) {
      if (deck[i] == null) {
        return false;
      }
    }
    return true;
  }

  private boolean isEmpty() {
    for (int i = 0; i < deck.length; i ++) {
      if (deck[i] != null) {
        return false;
      }
    }
    return true;
  }

  public String toString() {
    String s = "[";
    for (int i = 0; i < deck.length; i ++) {
      s += deck[i].getName();
      s += ", ";
    }
    s += "]";
    return s;
  }
}