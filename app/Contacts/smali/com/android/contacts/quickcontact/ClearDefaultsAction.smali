.class public Lcom/android/contacts/quickcontact/ClearDefaultsAction;
.super Ljava/lang/Object;
.source "ClearDefaultsAction.java"

# interfaces
.implements Lcom/android/contacts/quickcontact/Action;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ClearDefaultsAction;->collapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 80
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getHeader()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "__clear_defaults_mime_type"

    return-object v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ClearDefaultsAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method
