.class Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;
.super Ljava/lang/Object;
.source "AlertNotificationFullScreenActivity.java"

# interfaces
.implements Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AlertNotificationFullScreenActivity;->loadContactInfoAndShowDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

.field final synthetic val$contactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

.field final synthetic val$existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Lcom/google/android/talk/ContactInfoQuery;Lcom/google/android/talk/ContactInfoQuery;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iput-object p2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->val$contactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    iput-object p3, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->val$existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoLoaded()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->val$contactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v1}, Lcom/google/android/talk/ContactInfoQuery;->getNickName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mNickName:Ljava/lang/String;

    .line 384
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->val$contactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$502(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 385
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-static {v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$600(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-static {v1}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$500(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 387
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->val$existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->val$existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-static {v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$400(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    goto :goto_0
.end method
