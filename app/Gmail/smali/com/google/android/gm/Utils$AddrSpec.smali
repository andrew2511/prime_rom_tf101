.class Lcom/google/android/gm/Utils$AddrSpec;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddrSpec"
.end annotation


# static fields
.field private static final ATEXT_BITS:Ljava/util/BitSet;


# instance fields
.field private domain:Ljava/lang/String;

.field private localPart:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x7b

    .line 1741
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 1742
    .local v0, bits:Ljava/util/BitSet;
    const/16 v1, 0x30

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    .line 1743
    const/16 v1, 0x41

    const/16 v2, 0x5b

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    .line 1744
    const/16 v1, 0x61

    invoke-virtual {v0, v1, v3}, Ljava/util/BitSet;->set(II)V

    .line 1745
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1746
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1747
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1748
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1749
    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1750
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1751
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1752
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1753
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1754
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1755
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1756
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1757
    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1758
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1759
    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1760
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 1761
    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1762
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1763
    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1764
    sput-object v0, Lcom/google/android/gm/Utils$AddrSpec;->ATEXT_BITS:Ljava/util/BitSet;

    .line 1765
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 1767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1768
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1769
    .local v1, len:I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    .line 1771
    iput-object p1, p0, Lcom/google/android/gm/Utils$AddrSpec;->localPart:Ljava/lang/String;

    .line 1772
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gm/Utils$AddrSpec;->domain:Ljava/lang/String;

    .line 1783
    :goto_0
    return-void

    .line 1774
    :cond_0
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1775
    .local v0, index:I
    if-gez v0, :cond_1

    .line 1776
    iput-object p1, p0, Lcom/google/android/gm/Utils$AddrSpec;->localPart:Ljava/lang/String;

    .line 1777
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gm/Utils$AddrSpec;->domain:Ljava/lang/String;

    goto :goto_0

    .line 1779
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/Utils$AddrSpec;->localPart:Ljava/lang/String;

    .line 1780
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/Utils$AddrSpec;->domain:Ljava/lang/String;

    goto :goto_0
.end method

.method private isPeriod(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 1894
    const-string v0, ".\u3002\uff0e\uff61"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public validateDomain()Z
    .locals 14

    .prologue
    .line 1825
    iget-object v11, p0, Lcom/google/android/gm/Utils$AddrSpec;->domain:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    .line 1826
    .local v7, len:I
    if-gtz v7, :cond_0

    .line 1827
    const/4 v11, 0x0

    .line 1890
    :goto_0
    return v11

    .line 1829
    :cond_0
    const/16 v11, 0xff

    if-le v7, v11, :cond_1

    .line 1830
    const/4 v11, 0x0

    goto :goto_0

    .line 1832
    :cond_1
    const/4 v1, 0x1

    .line 1833
    .local v1, hasUnicode:Z
    const/4 v6, -0x1

    .line 1834
    .local v6, lastPeriod:I
    const/4 v5, 0x0

    .line 1835
    .local v5, labelStart:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_a

    .line 1836
    iget-object v11, p0, Lcom/google/android/gm/Utils$AddrSpec;->domain:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1837
    .local v0, ch:C
    invoke-direct {p0, v0}, Lcom/google/android/gm/Utils$AddrSpec;->isPeriod(C)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1838
    if-eqz v2, :cond_2

    add-int/lit8 v11, v6, 0x1

    if-eq v2, v11, :cond_2

    const/4 v11, 0x1

    sub-int v11, v7, v11

    if-eq v2, v11, :cond_2

    sub-int v11, v2, v5

    const/16 v12, 0x3f

    if-le v11, v12, :cond_3

    .line 1840
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 1842
    :cond_3
    move v6, v2

    .line 1843
    add-int/lit8 v5, v2, 0x1

    .line 1835
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1844
    :cond_5
    const/16 v11, 0x30

    if-gt v11, v0, :cond_6

    const/16 v11, 0x39

    if-le v0, v11, :cond_4

    :cond_6
    const/16 v11, 0x61

    if-gt v11, v0, :cond_7

    const/16 v11, 0x7a

    if-le v0, v11, :cond_4

    :cond_7
    const/16 v11, 0x41

    if-gt v11, v0, :cond_8

    const/16 v11, 0x5a

    if-le v0, v11, :cond_4

    :cond_8
    const/16 v11, 0x2d

    if-eq v0, v11, :cond_4

    .line 1849
    const/16 v11, 0x80

    if-ge v0, v11, :cond_9

    .line 1850
    const/4 v11, 0x0

    goto :goto_0

    .line 1852
    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    .line 1855
    .end local v0           #ch:C
    :cond_a
    if-ltz v6, :cond_f

    .line 1856
    sub-int v11, v7, v6

    const/4 v12, 0x1

    sub-int v10, v11, v12

    .line 1862
    .local v10, tldLength:I
    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    const/16 v11, 0x30

    iget-object v12, p0, Lcom/google/android/gm/Utils$AddrSpec;->domain:Ljava/lang/String;

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0       #ch:C
    if-gt v11, v0, :cond_d

    const/16 v11, 0x39

    if-gt v0, v11, :cond_d

    .line 1874
    .end local v0           #ch:C
    :cond_b
    if-eqz v1, :cond_c

    .line 1876
    :try_start_0
    iget-object v11, p0, Lcom/google/android/gm/Utils$AddrSpec;->domain:Ljava/lang/String;

    invoke-static {v11}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1890
    :cond_c
    const/4 v11, 0x1

    goto :goto_0

    .line 1866
    :cond_d
    const/4 v11, 0x2

    if-lt v10, v11, :cond_e

    const/4 v11, 0x6

    if-le v10, v11, :cond_b

    .line 1867
    :cond_e
    const/4 v11, 0x0

    goto :goto_0

    .line 1872
    .end local v10           #tldLength:I
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1877
    .restart local v10       #tldLength:I
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 1878
    .local v3, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    instance-of v11, v11, Ljava/text/ParseException;

    if-eqz v11, :cond_10

    .line 1879
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    check-cast v9, Ljava/text/ParseException;

    .line 1880
    .local v9, pe:Ljava/text/ParseException;
    invoke-virtual {v9}, Ljava/text/ParseException;->getErrorOffset()I

    move-result v8

    .line 1881
    .local v8, offset:I
    if-ltz v8, :cond_10

    if-ge v8, v7, :cond_10

    .line 1882
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1885
    .end local v8           #offset:I
    .end local v9           #pe:Ljava/text/ParseException;
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1886
    .end local v3           #iae:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v11

    move-object v4, v11

    .line 1887
    .local v4, ioobe:Ljava/lang/IndexOutOfBoundsException;
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public validateLocalPart()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 1786
    iget-object v3, p0, Lcom/google/android/gm/Utils$AddrSpec;->localPart:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 1787
    .local v2, len:I
    if-lez v2, :cond_0

    const/16 v3, 0x3e6

    if-le v2, v3, :cond_1

    :cond_0
    move v3, v5

    .line 1821
    :goto_0
    return v3

    .line 1790
    :cond_1
    iget-object v3, p0, Lcom/google/android/gm/Utils$AddrSpec;->localPart:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_7

    .line 1791
    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gm/Utils$AddrSpec;->localPart:Ljava/lang/String;

    sub-int v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_3

    :cond_2
    move v3, v5

    .line 1792
    goto :goto_0

    .line 1794
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 1795
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_b

    .line 1796
    iget-object v3, p0, Lcom/google/android/gm/Utils$AddrSpec;->localPart:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1797
    .local v0, ch:C
    if-ne v0, v6, :cond_4

    move v3, v5

    .line 1798
    goto :goto_0

    .line 1799
    :cond_4
    const/16 v3, 0x5c

    if-eq v0, v3, :cond_5

    .line 1795
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1802
    :cond_5
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v2, :cond_6

    .line 1803
    add-int/lit8 v1, v1, 0x1

    .line 1804
    goto :goto_2

    :cond_6
    move v3, v5

    .line 1806
    goto :goto_0

    .line 1809
    .end local v0           #ch:C
    .end local v1           #i:I
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v2, :cond_b

    .line 1810
    iget-object v3, p0, Lcom/google/android/gm/Utils$AddrSpec;->localPart:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1811
    .restart local v0       #ch:C
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_9

    .line 1809
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1813
    :cond_9
    sget-object v3, Lcom/google/android/gm/Utils$AddrSpec;->ATEXT_BITS:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->length()I

    move-result v3

    if-ge v0, v3, :cond_a

    sget-object v3, Lcom/google/android/gm/Utils$AddrSpec;->ATEXT_BITS:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_a
    move v3, v5

    .line 1817
    goto :goto_0

    .end local v0           #ch:C
    :cond_b
    move v3, v7

    .line 1821
    goto :goto_0
.end method
