# Lookup BIC code for Dutch banks

Given the four character identifier for a bank (e.g. RABO part of the IBAN account number) find BIC code for the bank (e.g. RABONL2U).

This script does a lookup in the [`BIC-lijst-NL.xlsx`](https://www.betaalvereniging.nl/wp-content/uploads/BIC-lijst-NL.xlsx) provided by [Betaalvereniging Nederland](https://www.betaalvereniging.nl).

## Usage

List all identifiers and BIC codes alphabetically:

```
$ ruby search.rb
AABN AABNNL2A
ABNA ABNANL2A
ABNC ABNCNL2A
ADYB ADYBNL2A
AEGO AEGONL2U
ANDL ANDLNL2A
ARBN ARBNNL22
ARSN ARSNNL21
ASNB ASNBNL21
ATBA ATBANL2A
BARC BARCNL22
BCDM BCDMNL22
...
```

Find a specific BIC code:

```
$ ruby search.rb RABO
RABONL2U
```
