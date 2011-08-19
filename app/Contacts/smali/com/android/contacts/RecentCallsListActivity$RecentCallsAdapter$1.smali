.class Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter$1;
.super Landroid/os/Handler;
.source "RecentCallsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter$1;->this$1:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 233
    :goto_0
    return-void

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter$1;->this$1:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter$1;->this$1:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->startRequestProcessing()V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
