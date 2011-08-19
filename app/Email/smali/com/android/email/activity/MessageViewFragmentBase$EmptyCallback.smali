.class public Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Lcom/android/email/activity/MessageViewFragmentBase$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMessageError(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 252
    return-void
.end method

.method public onLoadMessageFinished()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public onLoadMessageStarted()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public onMessageNotExists()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public onMessageViewGone()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public onMessageViewShown(I)V
    .locals 0
    .parameter "mailboxType"

    .prologue
    .line 250
    return-void
.end method

.method public onUrlInMessageClicked(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method
