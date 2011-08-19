.class public final Lcom/android/email/activity/MessageViewFragment$EmptyCallback;
.super Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;
.source "MessageViewFragment.java"

# interfaces
.implements Lcom/android/email/activity/MessageViewFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeMessageDelete()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onCalendarLinkClicked(J)V
    .locals 0
    .parameter "epochEventStartTime"

    .prologue
    .line 127
    return-void
.end method

.method public onForward()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onMessageSetUnread()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onMoveMessage()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public onReply()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onReplyAll()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public onRespondedToInvite(I)V
    .locals 0
    .parameter "response"

    .prologue
    .line 129
    return-void
.end method
