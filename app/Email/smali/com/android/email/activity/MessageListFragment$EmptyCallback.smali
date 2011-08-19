.class final Lcom/android/email/activity/MessageListFragment$EmptyCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/android/email/activity/MessageListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/android/email/activity/MessageListFragment$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/MessageListFragment$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterSelectionMode(Z)V
    .locals 0
    .parameter "enter"

    .prologue
    .line 212
    return-void
.end method

.method public onMailboxNotFound()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public onMessageOpen(JJJI)V
    .locals 0
    .parameter "messageId"
    .parameter "messageMailboxId"
    .parameter "listMailboxId"
    .parameter "type"

    .prologue
    .line 209
    return-void
.end method
