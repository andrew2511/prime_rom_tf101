.class Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
.super Ljava/lang/Object;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/Pop3Store$Pop3Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UidlParser"
.end annotation


# instance fields
.field public mEndOfMessage:Z

.field public mErr:Z

.field public mMessageNumber:I

.field public mUniqueId:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/email/mail/store/Pop3Store$Pop3Folder;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V
    .locals 1
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->this$1:Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mErr:Z

    .line 538
    return-void
.end method


# virtual methods
.method public parseMultiLine(Ljava/lang/String;)Z
    .locals 7
    .parameter "response"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 581
    iput-boolean v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mErr:Z

    .line 582
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v5

    .line 602
    :goto_0
    return v3

    .line 585
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 586
    .local v0, first:C
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2

    .line 587
    iput-boolean v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    move v3, v6

    .line 588
    goto :goto_0

    .line 590
    :cond_2
    const-string v3, " +"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, uidParts:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 593
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    aget-object v3, v2, v6

    iput-object v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    .line 598
    iput-boolean v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    move v3, v6

    .line 599
    goto :goto_0

    .line 594
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, nfe:Ljava/lang/NumberFormatException;
    move v3, v5

    .line 595
    goto :goto_0

    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_3
    move v3, v5

    .line 602
    goto :goto_0
.end method

.method public parseSingleLine(Ljava/lang/String;)Z
    .locals 7
    .parameter "response"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 549
    iput-boolean v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mErr:Z

    .line 550
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v5

    .line 570
    :goto_0
    return v3

    .line 553
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 554
    .local v0, first:C
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_2

    .line 555
    const-string v3, " +"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, uidParts:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    .line 558
    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    const/4 v3, 0x2

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    .line 563
    iput-boolean v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    move v3, v6

    .line 564
    goto :goto_0

    .line 559
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, nfe:Ljava/lang/NumberFormatException;
    move v3, v5

    .line 560
    goto :goto_0

    .line 566
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    .end local v2           #uidParts:[Ljava/lang/String;
    :cond_2
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_3

    .line 567
    iput-boolean v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mErr:Z

    move v3, v6

    .line 568
    goto :goto_0

    :cond_3
    move v3, v5

    .line 570
    goto :goto_0
.end method
