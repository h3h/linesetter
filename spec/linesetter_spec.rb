require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Linesetter do

  it "should only trim trailing whitespace on a single-line input" do
    Linesetter.format(" test ").should == " test"
  end

  it "should make a single line of > 78 chars into 2 lines" do
    long_line = "We the People of the United States, in Order to form a more " +
      "perfect Union, establish Justice,"
    two_lines = "We the People of the United States, in Order to form a more " +
      "perfect Union,\nestablish Justice,"
    Linesetter.format(long_line).should == two_lines
  end

  it "should make a single line of > 156 chars into 3 lines" do
    long_line = "We the People of the United States, in Order to form a more " +
    "perfect Union, establish Justice, insure domestic Tranquility, provide "  +
    "for the common defence,"
    two_lines = "We the People of the United States, in Order to form a more " +
    "perfect Union,\nestablish Justice, insure domestic Tranquility, provide " +
    "for the common\ndefence,"
    Linesetter.format(long_line).should == two_lines
  end

  it "should make many lines of > 78 chars into many lines" do
    long_line = "We the People of the United States, in Order to form a more " +
    "perfect Union, establish\nJustice, insure domestic Tranquility, provide " +
    "for the common defence, promote\nthe general Welfare, and secure the "    +
    "Blessings of Liberty to ourselves\nand our Posterity, do ordain and "     +
    "establish this Constitution for the United States of\nAmerica."
    many_lines = "We the People of the United States, in Order to form a more "+
    "perfect Union,\nestablish Justice, insure domestic Tranquility, provide " +
    "for the common\ndefence, promote the general Welfare, and secure the "    +
    "Blessings of Liberty to\nourselves and our Posterity, do ordain and "     +
    "establish this Constitution for the\nUnited States of America."
    Linesetter.format(long_line).should == many_lines
  end

  it "should make many lines of > 78 chars with indentation into many lines" do
    long_line = "    We the People of the United States, in Order to form a "  +
    "more perfect Union, establish\n    Justice, insure domestic "             +
    "Tranquility, provide for the common defence, promote\n    the general "   +
    "Welfare, and secure the Blessings of Liberty to ourselves\n    and our "  +
    "Posterity, do ordain and establish this Constitution for the United "     +
    "States of\n    America."
    many_lines = "    We the People of the United States, in Order to form a " +
    "more perfect Union,\n    establish Justice, insure domestic "             +
    "Tranquility, provide for the common\n    defence, promote the general "   +
    "Welfare, and secure the Blessings of Liberty\n    to ourselves and our "  +
    "Posterity, do ordain and establish this Constitution\n    for the "       +
    "United States of America."
    Linesetter.format(long_line).should == many_lines
  end

end
