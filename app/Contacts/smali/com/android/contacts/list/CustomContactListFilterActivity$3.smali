.class Lcom/android/contacts/list/CustomContactListFilterActivity$3;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;->handleRemoveSync(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

.field final synthetic val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

.field final synthetic val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 831
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$3;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    iput-object p2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$3;->val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iput-object p3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$3;->val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

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

    .line 834
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$3;->val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$3;->val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v1, v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Z)V

    .line 835
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$3;->val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$3;->val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Z)V

    .line 836
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$3;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-static {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$300(Lcom/android/contacts/list/CustomContactListFilterActivity;)Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 837
    return-void
.end method
