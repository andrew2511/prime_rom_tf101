.class public Lcom/android/contacts/editor/PhoneticNameEditorView;
.super Lcom/android/contacts/editor/TextFieldsEditorView;
.source "PhoneticNameEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method


# virtual methods
.method public hasData()Z
    .locals 5

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhoneticNameEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    .line 149
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v4, "data9"

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, family:Ljava/lang/String;
    const-string v4, "data8"

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, middle:Ljava/lang/String;
    const-string v4, "data7"

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, given:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 2
    .parameter "kind"
    .parameter "entry"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    .line 140
    instance-of v1, p2, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;

    if-nez v1, :cond_0

    .line 141
    new-instance v0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;

    invoke-direct {v0, p2}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;-><init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .end local p2
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object p2, v0

    .line 143
    .end local v0           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local p2
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/TextFieldsEditorView;->setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 144
    return-void
.end method
