.class public Lcom/android/contacts/quickcontact/ProfileAction;
.super Ljava/lang/Object;
.source "ProfileAction.java"

# interfaces
.implements Lcom/android/contacts/quickcontact/Action;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLookupUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "lookupUri"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ProfileAction;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/contacts/quickcontact/ProfileAction;->mLookupUri:Landroid/net/Uri;

    .line 37
    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ProfileAction;->collapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 86
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getHeader()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/contacts/quickcontact/ProfileAction;->mLookupUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "vnd.android.cursor.item/contact"

    return-object v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ProfileAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method
