.class public Lcom/android/contacts/model/BaseAccountType$PhoneActionAltInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionAltInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v1, 0x7f0c0128

    .line 542
    if-nez p1, :cond_0

    move v0, v1

    .line 564
    :goto_0
    return v0

    .line 543
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 564
    const v0, 0x7f0c0121

    goto :goto_0

    .line 544
    :pswitch_0
    const v0, 0x7f0c0122

    goto :goto_0

    .line 545
    :pswitch_1
    const v0, 0x7f0c0123

    goto :goto_0

    .line 546
    :pswitch_2
    const v0, 0x7f0c0124

    goto :goto_0

    .line 547
    :pswitch_3
    const v0, 0x7f0c0125

    goto :goto_0

    .line 548
    :pswitch_4
    const v0, 0x7f0c0126

    goto :goto_0

    .line 549
    :pswitch_5
    const v0, 0x7f0c0127

    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 550
    goto :goto_0

    .line 551
    :pswitch_7
    const v0, 0x7f0c0129

    goto :goto_0

    .line 552
    :pswitch_8
    const v0, 0x7f0c012a

    goto :goto_0

    .line 553
    :pswitch_9
    const v0, 0x7f0c012b

    goto :goto_0

    .line 554
    :pswitch_a
    const v0, 0x7f0c012c

    goto :goto_0

    .line 555
    :pswitch_b
    const v0, 0x7f0c012d

    goto :goto_0

    .line 556
    :pswitch_c
    const v0, 0x7f0c012e

    goto :goto_0

    .line 557
    :pswitch_d
    const v0, 0x7f0c012f

    goto :goto_0

    .line 558
    :pswitch_e
    const v0, 0x7f0c0130

    goto :goto_0

    .line 559
    :pswitch_f
    const v0, 0x7f0c0131

    goto :goto_0

    .line 560
    :pswitch_10
    const v0, 0x7f0c0132

    goto :goto_0

    .line 561
    :pswitch_11
    const v0, 0x7f0c0133

    goto :goto_0

    .line 562
    :pswitch_12
    const v0, 0x7f0c0134

    goto :goto_0

    .line 563
    :pswitch_13
    const v0, 0x7f0c0135

    goto :goto_0

    .line 543
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 537
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
