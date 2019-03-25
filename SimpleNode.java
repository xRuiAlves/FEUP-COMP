/* Generated By:JJTree: Do not edit this line. SimpleNode.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=false,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
public
class SimpleNode implements Node {

  protected Node parent;
  protected Node[] children;
  protected int id;
  protected Object value;
  protected JMMParser parser;

  protected boolean is_multiline = false;

  public SimpleNode(int i) {
    id = i;
  }

  public SimpleNode(JMMParser p, int i) {
    this(i);
    parser = p;
  }

  public void jjtOpen() {
  }

  public void jjtClose() {
  }

  public void jjtSetParent(Node n) { parent = n; }
  public Node jjtGetParent() { return parent; }

  public void jjtAddChild(Node n, int i) {
    if (children == null) {
      children = new Node[i + 1];
    } else if (i >= children.length) {
      Node c[] = new Node[i + 1];
      System.arraycopy(children, 0, c, 0, children.length);
      children = c;
    }
    children[i] = n;
  }

  public Node jjtGetChild(int i) {
    return children[i];
  }

  public int jjtGetNumChildren() {
    return (children == null) ? 0 : children.length;
  }

  public void jjtSetValue(Object value) { this.value = value; }
  public Object jjtGetValue() { return value; }

  /* JavaCC says: You can override these two methods in subclasses of SimpleNode to
     customize the way the node appears when the tree is dumped.  If
     your output uses more than one line you should override
     toString(String), otherwise overriding toString() is probably all
     you need to do. */

  public String toString() { return JMMParserTreeConstants.jjtNodeName[id]; }
  public String toString(String prefix) { return prefix + toString(); }

  /**
   Override to set a custom node name
   */
  public String getNodeName() {
    return JMMParserTreeConstants.jjtNodeName[id];
  }

  /* Override this method if you want to customize how the node dumps
     out its children. */

  public void dump(String prefix) {
    this.printNodeName(prefix);
    String node_information = this.getInformation(prefix);
    if (!node_information.isEmpty()) {
      System.out.println(node_information);
    }
    this.exploreChildren(prefix);
  }

  public void printNodeName(String prefix) {
    System.out.println(prefix + this.getNodeName());
  }

  public void exploreChildren(String prefix) {
    if (children != null) {
      for (int i = 0; i < children.length; ++i) {
        SimpleNode n = (SimpleNode)children[i];
        if (n != null) {
          n.dump(prefix + " ");
        }
      }
    }
  }

  // Override in subclases to provide information about internal methods
  // The prefix is passed so that multi-line information still works
  // Note: the returned String *must not contain trailing newlines*, as it might be used by other nodes
  public String getInformation(String prefix) {
    return "";
  }
}

/* JavaCC - OriginalChecksum=a034570e9cb3b1a622b39a65746d8490 (do not edit this line) */
