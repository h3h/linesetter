# Linesetter helps you reformat your paragraphs.

If you start out with ugly long lines of text, or unsightly short ones with a
ragged right edge, linesetter will whip your text back into shape by putting
as many words on each line that will fit in 78 characters, while retaining a
left-side indent of spaces.

## Example

### Before

    We the People of the United States
    in Order to form a more perfect Union, establish Justice, insure domestic Tranquility,
    provide for the common defence, promote the general
    Welfare

### After

    We the People of the United States in Order to form a more perfect Union,
    establish Justice, insure domestic Tranquility, provide for the common
    defence, promote the general Welfare

Simple, easy, effective.

## Installation

    gem install linesetter

## Optional TextMate Command

You can drag the `Linesetter.tmCommand` file from `extras/` into TextMate's
Bundle Editor to get a handy command that runs `linesetter` from TextMate. It's
set up with a default keyboard shortcut of `⌘+` (`⌘⇧=`).
