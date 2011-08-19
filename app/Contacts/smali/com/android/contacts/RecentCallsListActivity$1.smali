.class Lcom/android/contacts/RecentCallsListActivity$1;
.super Ljava/lang/Object;
.source "RecentCallsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/RecentCallsListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/RecentCallsListActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/RecentCallsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/contacts/RecentCallsListActivity$1;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 1050
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$1;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    invoke-virtual {v0}, Lcom/android/contacts/RecentCallsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1054
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$1;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    invoke-static {v0}, Lcom/android/contacts/RecentCallsListActivity;->access$000(Lcom/android/contacts/RecentCallsListActivity;)V

    .line 1055
    return-void
.end method
