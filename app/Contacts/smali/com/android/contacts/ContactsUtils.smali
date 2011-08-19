.class public Lcom/android/contacts/ContactsUtils;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsUtils$ProviderNames;
    }
.end annotation


# static fields
.field private static final WAIT_SYMBOL_AS_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactsUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static final areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 136
    if-ne p0, p1, :cond_0

    .line 137
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    .line 139
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 140
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 89
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 150
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 152
    .local v0, detector:Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lookupProviderNameFromId(I)Ljava/lang/String;
    .locals 1
    .parameter "protocol"

    .prologue
    .line 56
    packed-switch p0, :pswitch_data_0

    .line 74
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    const-string v0, "GTalk"

    goto :goto_0

    .line 60
    :pswitch_1
    const-string v0, "AIM"

    goto :goto_0

    .line 62
    :pswitch_2
    const-string v0, "MSN"

    goto :goto_0

    .line 64
    :pswitch_3
    const-string v0, "Yahoo"

    goto :goto_0

    .line 66
    :pswitch_4
    const-string v0, "ICQ"

    goto :goto_0

    .line 68
    :pswitch_5
    const-string v0, "JABBER"

    goto :goto_0

    .line 70
    :pswitch_6
    const-string v0, "SKYPE"

    goto :goto_0

    .line 72
    :pswitch_7
    const-string v0, "QQ"

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final shouldCollapse(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 7
    .parameter "context"
    .parameter "mimetype1"
    .parameter "data1"
    .parameter "mimetype2"
    .parameter "data2"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 99
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 101
    if-ne p2, p4, :cond_0

    move v3, v6

    .line 128
    :goto_0
    return v3

    .line 104
    :cond_0
    if-eqz p2, :cond_1

    if-nez p4, :cond_2

    :cond_1
    move v3, v5

    .line 105
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/ContactsUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, dataParts1:[Ljava/lang/String;
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/ContactsUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, dataParts2:[Ljava/lang/String;
    array-length v3, v0

    array-length v4, v1

    if-eq v3, v4, :cond_3

    move v3, v5

    .line 115
    goto :goto_0

    .line 117
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 118
    aget-object v3, v0, v2

    aget-object v4, v1, v2

    invoke-static {p0, v3, v4}, Landroid/telephony/PhoneNumberUtils;->compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v5

    .line 119
    goto :goto_0

    .line 117
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v3, v6

    .line 123
    goto :goto_0

    .line 125
    .end local v0           #dataParts1:[Ljava/lang/String;
    .end local v1           #dataParts2:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_6
    if-ne p1, p3, :cond_7

    if-ne p2, p4, :cond_7

    move v3, v6

    .line 126
    goto :goto_0

    .line 128
    :cond_7
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v6

    goto :goto_0

    :cond_8
    move v3, v5

    goto :goto_0
.end method
