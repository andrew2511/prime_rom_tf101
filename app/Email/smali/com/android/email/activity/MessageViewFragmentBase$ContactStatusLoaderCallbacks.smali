.class Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactStatusLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/email/activity/ContactStatusLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFragment:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 713
    return-void
.end method

.method public static createArguments(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "emailAddress"

    .prologue
    .line 716
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 717
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    return-object v0
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/activity/ContactStatusLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    new-instance v0, Lcom/android/email/activity/ContactStatusLoader;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/ContactStatusLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/email/activity/ContactStatusLoader$Result;)V
    .locals 3
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/activity/ContactStatusLoader$Result;",
            ">;",
            "Lcom/android/email/activity/ContactStatusLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/email/activity/ContactStatusLoader$Result;>;"
    const/4 v2, 0x1

    .line 730
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$300(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v0, v2

    .line 732
    .local v0, triggered:Z
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$302(Lcom/android/email/activity/MessageViewFragmentBase;I)I

    .line 733
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mLookupUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$402(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/net/Uri;)Landroid/net/Uri;

    .line 734
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v1

    iget v2, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPresenceResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 735
    iget-object v1, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$600(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 738
    :cond_0
    if-eqz v0, :cond_1

    .line 739
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$700(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 741
    :cond_1
    return-void

    .line 730
    .end local v0           #triggered:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 706
    check-cast p2, Lcom/android/email/activity/ContactStatusLoader$Result;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/android/email/activity/ContactStatusLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/activity/ContactStatusLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/email/activity/ContactStatusLoader$Result;>;"
    return-void
.end method
