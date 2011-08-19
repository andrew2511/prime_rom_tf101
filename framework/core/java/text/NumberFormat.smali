.class public abstract Ljava/text/NumberFormat;
.super Ljava/text/Format;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/NumberFormat$Field;
    }
.end annotation


# static fields
.field public static final FRACTION_FIELD:I = 0x1

.field public static final INTEGER_FIELD:I = 0x0

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = -0x20094c40ec82f818L


# instance fields
.field private groupingUsed:Z

.field private maximumFractionDigits:I

.field private maximumIntegerDigits:I

.field private minimumFractionDigits:I

.field private minimumIntegerDigits:I

.field private parseIntegerOnly:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 684
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "groupingUsed"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maxFractionDigits"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maximumFractionDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maximumIntegerDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "maxIntegerDigits"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minFractionDigits"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minimumFractionDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minimumIntegerDigits"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minIntegerDigits"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "parseIntegerOnly"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/NumberFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method protected constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 156
    iput-boolean v2, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    iput-boolean v1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    .line 158
    const/16 v0, 0x28

    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iput v2, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    const/4 v0, 0x3

    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iput v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 165
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .prologue
    .line 317
    invoke-static {}, Llibcore/icu/ICU;->getAvailableNumberFormatLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getCurrencyInstance()Ljava/text/NumberFormat;
    .registers 1

    .prologue
    .line 344
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .registers 2
    .parameter "locale"

    .prologue
    .line 356
    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/text/NumberFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Ljava/text/NumberFormat;
    .registers 1

    .prologue
    .line 391
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/NumberFormat;
    .registers 3
    .parameter "pattern"
    .parameter "locale"

    .prologue
    .line 408
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .registers 2
    .parameter "locale"

    .prologue
    .line 403
    invoke-static {p0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getIntegerInstance()Ljava/text/NumberFormat;
    .registers 1

    .prologue
    .line 367
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .registers 3
    .parameter "locale"

    .prologue
    .line 379
    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    iget-object v1, v1, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/text/NumberFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 380
    .local v0, result:Ljava/text/NumberFormat;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 381
    return-object v0
.end method

.method public static final getNumberInstance()Ljava/text/NumberFormat;
    .registers 1

    .prologue
    .line 462
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .registers 2
    .parameter "locale"

    .prologue
    .line 474
    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/text/NumberFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getPercentInstance()Ljava/text/NumberFormat;
    .registers 1

    .prologue
    .line 488
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .registers 2
    .parameter "locale"

    .prologue
    .line 501
    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/text/NumberFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x28

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 722
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 723
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v1, "groupingUsed"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    .line 724
    const-string v1, "parseIntegerOnly"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    .line 725
    const-string v1, "serialVersionOnStream"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_55

    .line 726
    const-string v1, "maxFractionDigits"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v1

    iput v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    .line 727
    const-string v1, "maxIntegerDigits"

    invoke-virtual {v0, v1, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v1

    iput v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    .line 728
    const-string v1, "minFractionDigits"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v1

    iput v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 729
    const-string v1, "minIntegerDigits"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v1

    iput v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    .line 736
    :goto_41
    iget v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v2, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-gt v1, v2, :cond_4d

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iget v2, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-le v1, v2, :cond_76

    .line 738
    :cond_4d
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "min digits greater than max digits"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 731
    :cond_55
    const-string v1, "maximumFractionDigits"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    .line 732
    const-string v1, "maximumIntegerDigits"

    invoke-virtual {v0, v1, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    .line 733
    const-string v1, "minimumFractionDigits"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 734
    const-string v1, "minimumIntegerDigits"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    goto :goto_41

    .line 740
    :cond_76
    iget v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-ltz v1, :cond_86

    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-ltz v1, :cond_86

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ltz v1, :cond_86

    iget v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-gez v1, :cond_8e

    .line 742
    :cond_86
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "min or max digits negative"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 744
    :cond_8e
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x7f

    .line 698
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 699
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "groupingUsed"

    iget-boolean v2, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 700
    const-string v1, "maxFractionDigits"

    iget v2, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-ge v2, v3, :cond_6a

    iget v2, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    int-to-byte v2, v2

    :goto_16
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    .line 703
    const-string v1, "maximumFractionDigits"

    iget v2, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 704
    const-string v1, "maximumIntegerDigits"

    iget v2, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 705
    const-string v1, "maxIntegerDigits"

    iget v2, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-ge v2, v3, :cond_6c

    iget v2, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    int-to-byte v2, v2

    :goto_30
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    .line 708
    const-string v1, "minFractionDigits"

    iget v2, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ge v2, v3, :cond_6e

    iget v2, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    int-to-byte v2, v2

    :goto_3c
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    .line 711
    const-string v1, "minimumFractionDigits"

    iget v2, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 712
    const-string v1, "minimumIntegerDigits"

    iget v2, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 713
    const-string v1, "minIntegerDigits"

    iget v2, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-ge v2, v3, :cond_70

    iget v2, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    int-to-byte v2, v2

    :goto_56
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    .line 715
    const-string v1, "parseIntegerOnly"

    iget-boolean v2, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 716
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 717
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 718
    return-void

    :cond_6a
    move v2, v3

    .line 700
    goto :goto_16

    :cond_6c
    move v2, v3

    .line 705
    goto :goto_30

    :cond_6e
    move v2, v3

    .line 708
    goto :goto_3c

    :cond_70
    move v2, v3

    .line 713
    goto :goto_56
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 176
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 199
    :goto_5
    return v2

    .line 195
    :cond_6
    instance-of v2, p1, Ljava/text/NumberFormat;

    if-nez v2, :cond_c

    move v2, v4

    .line 196
    goto :goto_5

    .line 198
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/text/NumberFormat;

    move-object v1, v0

    .line 199
    .local v1, obj:Ljava/text/NumberFormat;
    iget-boolean v2, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    iget-boolean v3, v1, Ljava/text/NumberFormat;->groupingUsed:Z

    if-ne v2, v3, :cond_36

    iget-boolean v2, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    iget-boolean v3, v1, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    if-ne v2, v3, :cond_36

    iget v2, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v3, v1, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-ne v2, v3, :cond_36

    iget v2, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iget v3, v1, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-ne v2, v3, :cond_36

    iget v2, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iget v3, v1, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ne v2, v3, :cond_36

    iget v2, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v3, v1, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-ne v2, v3, :cond_36

    move v2, v5

    goto :goto_5

    :cond_36
    move v2, v4

    goto :goto_5
.end method

.method public final format(D)Ljava/lang/String;
    .registers 6
    .parameter "value"

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final format(J)Ljava/lang/String;
    .registers 6
    .parameter "value"

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 11
    .parameter "object"
    .parameter "buffer"
    .parameter "field"

    .prologue
    .line 299
    instance-of v5, p1, Ljava/lang/Byte;

    if-nez v5, :cond_20

    instance-of v5, p1, Ljava/lang/Short;

    if-nez v5, :cond_20

    instance-of v5, p1, Ljava/lang/Integer;

    if-nez v5, :cond_20

    instance-of v5, p1, Ljava/lang/Long;

    if-nez v5, :cond_20

    instance-of v5, p1, Ljava/math/BigInteger;

    if-eqz v5, :cond_2b

    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v6, 0x40

    if-ge v5, v6, :cond_2b

    .line 302
    :cond_20
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 303
    .local v3, lv:J
    invoke-virtual {p0, v3, v4, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 306
    .end local v3           #lv:J
    :goto_2a
    return-object v5

    .line 304
    .restart local p1
    :cond_2b
    instance-of v5, p1, Ljava/lang/Number;

    if-eqz v5, :cond_3a

    .line 305
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 306
    .local v1, dv:D
    invoke-virtual {p0, v1, v2, p2, p3}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v5

    goto :goto_2a

    .line 308
    .end local v1           #dv:D
    .restart local p1
    :cond_3a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method

.method public getCurrency()Ljava/util/Currency;
    .registers 2

    .prologue
    .line 333
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMaximumFractionDigits()I
    .registers 2

    .prologue
    .line 420
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    return v0
.end method

.method public getMaximumIntegerDigits()I
    .registers 2

    .prologue
    .line 431
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    return v0
.end method

.method public getMinimumFractionDigits()I
    .registers 2

    .prologue
    .line 441
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .registers 2

    .prologue
    .line 451
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    return v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .registers 2

    .prologue
    .line 833
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    .line 506
    iget-boolean v0, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    if-eqz v0, :cond_1c

    move v0, v2

    :goto_9
    iget-boolean v1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    if-eqz v1, :cond_1e

    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    add-int/2addr v0, v1

    return v0

    :cond_1c
    move v0, v3

    goto :goto_9

    :cond_1e
    move v1, v3

    goto :goto_e
.end method

.method public isGroupingUsed()Z
    .registers 2

    .prologue
    .line 519
    iget-boolean v0, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    return v0
.end method

.method public isParseIntegerOnly()Z
    .registers 2

    .prologue
    .line 530
    iget-boolean v0, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Number;
    .registers 7
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 544
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 545
    .local v1, pos:Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    .line 546
    .local v0, number:Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_33

    .line 547
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unparseable number: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 549
    :cond_33
    return-object v0
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.end method

.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 6
    .parameter "string"
    .parameter "position"

    .prologue
    .line 574
    if-nez p2, :cond_a

    .line 575
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "position is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v1

    .line 580
    :goto_e
    return-object v1

    .line 579
    :catch_f
    move-exception v0

    .line 580
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .registers 3
    .parameter "currency"

    .prologue
    .line 597
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setGroupingUsed(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 609
    iput-boolean p1, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    .line 610
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 621
    if-gez p1, :cond_10

    const/4 v0, 0x0

    :goto_3
    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    .line 622
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_f

    .line 623
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 625
    :cond_f
    return-void

    :cond_10
    move v0, p1

    .line 621
    goto :goto_3
.end method

.method public setMaximumIntegerDigits(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 636
    if-gez p1, :cond_10

    const/4 v0, 0x0

    :goto_3
    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    .line 637
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-ge v0, v1, :cond_f

    .line 638
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    .line 640
    :cond_f
    return-void

    :cond_10
    move v0, p1

    .line 636
    goto :goto_3
.end method

.method public setMinimumFractionDigits(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 650
    if-gez p1, :cond_10

    const/4 v0, 0x0

    :goto_3
    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 651
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_f

    .line 652
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    .line 654
    :cond_f
    return-void

    :cond_10
    move v0, p1

    .line 650
    goto :goto_3
.end method

.method public setMinimumIntegerDigits(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 664
    if-gez p1, :cond_10

    const/4 v0, 0x0

    :goto_3
    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    .line 665
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-ge v0, v1, :cond_f

    .line 666
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    .line 668
    :cond_f
    return-void

    :cond_10
    move v0, p1

    .line 664
    goto :goto_3
.end method

.method public setParseIntegerOnly(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 681
    iput-boolean p1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    .line 682
    return-void
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .registers 3
    .parameter "roundingMode"

    .prologue
    .line 843
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
