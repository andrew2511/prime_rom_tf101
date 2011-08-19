.class Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;
.super Lcom/android/contacts/model/EntityDelta$ValuesDelta;
.source "PhoneticNameEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/PhoneticNameEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneticValuesDelta"
.end annotation


# instance fields
.field private mPhoneticName:Ljava/lang/String;

.field private mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;


# direct methods
.method public constructor <init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 39
    invoke-direct {p0}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->buildPhoneticName()V

    .line 40
    return-void
.end method

.method private buildPhoneticName()V
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 91
    iget-object v4, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v5, "data9"

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, family:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v5, "data8"

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, middle:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v5, "data7"

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, given:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 97
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 102
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 105
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mPhoneticName:Ljava/lang/String;

    .line 112
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 110
    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mPhoneticName:Ljava/lang/String;

    goto :goto_0
.end method

.method private parsePhoneticName(Ljava/lang/String;)V
    .locals 8
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, family:Ljava/lang/String;
    const/4 v2, 0x0

    .line 65
    .local v2, middle:Ljava/lang/String;
    const/4 v1, 0x0

    .line 67
    .local v1, given:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    const-string v4, " "

    const/4 v5, 0x3

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, strings:[Ljava/lang/String;
    array-length v4, v3

    packed-switch v4, :pswitch_data_0

    .line 85
    .end local v3           #strings:[Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v5, "data9"

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v4, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v5, "data8"

    invoke-virtual {v4, v5, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v4, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v5, "data7"

    invoke-virtual {v4, v5, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void

    .line 71
    .restart local v3       #strings:[Ljava/lang/String;
    :pswitch_0
    aget-object v0, v3, v6

    .line 72
    goto :goto_0

    .line 74
    :pswitch_1
    aget-object v0, v3, v6

    .line 75
    aget-object v1, v3, v7

    .line 76
    goto :goto_0

    .line 78
    :pswitch_2
    aget-object v0, v3, v6

    .line 79
    aget-object v2, v3, v7

    .line 80
    const/4 v4, 0x2

    aget-object v1, v3, v4

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 55
    const-string v0, "#phoneticName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mPhoneticName:Ljava/lang/String;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 44
    const-string v0, "#phoneticName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iput-object p2, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mPhoneticName:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p2}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->parsePhoneticName(Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->buildPhoneticName()V

    goto :goto_0
.end method
