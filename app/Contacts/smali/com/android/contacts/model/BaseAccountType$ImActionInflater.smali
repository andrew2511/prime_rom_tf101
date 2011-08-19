.class public Lcom/android/contacts/model/BaseAccountType$ImActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    const-string v0, "data6"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    const-string v0, "data5"

    return-object v0
.end method

.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v1, 0x7f0c0148

    .line 623
    if-nez p1, :cond_0

    move v0, v1

    .line 634
    :goto_0
    return v0

    .line 624
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 634
    goto :goto_0

    .line 625
    :pswitch_0
    const v0, 0x7f0c0140

    goto :goto_0

    .line 626
    :pswitch_1
    const v0, 0x7f0c0141

    goto :goto_0

    .line 627
    :pswitch_2
    const v0, 0x7f0c0142

    goto :goto_0

    .line 628
    :pswitch_3
    const v0, 0x7f0c0143

    goto :goto_0

    .line 629
    :pswitch_4
    const v0, 0x7f0c0144

    goto :goto_0

    .line 630
    :pswitch_5
    const v0, 0x7f0c0145

    goto :goto_0

    .line 631
    :pswitch_6
    const v0, 0x7f0c0146

    goto :goto_0

    .line 632
    :pswitch_7
    const v0, 0x7f0c0147

    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 633
    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
