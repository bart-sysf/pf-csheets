# Panfinder homebrew

Load `panfinder.pcc` alongside the Pathfinder Core Rulebook source.

## Aldren's Forceps

The forceps increase a cleric's domain allowance by one while equipped in the active equipment set. `BONUS:VAR|ClericDomainCount|1` feeds the cleric class's existing `BONUS:DOMAIN|NUMBER|ClericDomainCount` formula. It replaces the direct domain bonus; using both would grant two additional domains.

The original `BONUS:DOMAIN|NUMBER|1` is also valid syntax. In PCGen 6.08.00 RC10, equipping an item recalculates bonuses but does not refresh the domain panel's displayed remaining selections. Changing the bonus tag alone does not fix that display issue.

1. After updating the LST file, restart PCGen and load the Panfinder source with your Pathfinder sources.
2. If the character already owns the forceps, remove and re-add the item so it uses the updated definition, then equip it in the active equipment set.
3. Save, close, and reopen the character to refresh domain selections.
4. On the Domains tab, select the additional domain. A standard cleric with two domains selected should have one selection remaining.

The domain must still be eligible for the character's deity and prerequisites. Unequipping the forceps reduces the allowance; if the extra domain remains selected, remove it to return within the limit.

Implementation references for PCGen 6.08.00 RC10:

- [Pathfinder cleric domain count](https://github.com/PCGen/pcgen/blob/6.08.00RC10/data/pathfinder/paizo/roleplaying_game/core_rulebook/cr_classes.lst#L55)
- [Domain panel refresh and equipment updates](https://github.com/PCGen/pcgen/blob/6.08.00RC10/code/src/java/pcgen/gui2/facade/CharacterFacadeImpl.java)
