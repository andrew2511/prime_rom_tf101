.class Lcom/google/android/talk/BuddyListCombo$6;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/BuddyListCombo;->initAccountSwitcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyListCombo;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 890
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v3}, Lcom/google/android/talk/BuddyListCombo;->access$1300(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 891
    .local v0, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    if-nez v0, :cond_1

    .line 892
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget v3, v3, Lcom/google/android/talk/BuddyListCombo;->mLogLevel:I

    if-lt v3, v6, :cond_0

    .line 893
    const-string v3, "account switcher setOnItemSelectedListener null account!!! "

    invoke-static {v3}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v3}, Lcom/google/android/talk/BuddyListCombo;->access$800(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v3}, Lcom/google/android/talk/BuddyListCombo;->access$800(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 902
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v3, v3, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v3, v5}, Lcom/google/android/talk/fragments/BuddyListFragment;->setEnabled(Z)V

    .line 904
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v3}, Lcom/google/android/talk/BuddyListCombo;->access$1200(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v2

    .line 905
    .local v2, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v2, :cond_3

    iget-object v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/android/talk/AccountLoginUtils;->isSignedIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v6

    .line 907
    .local v1, isSignedIn:Z
    :goto_1
    if-nez v1, :cond_2

    .line 908
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v3, v5}, Lcom/google/android/talk/BuddyListCombo;->access$1400(Lcom/google/android/talk/BuddyListCombo;Z)V

    .line 912
    :cond_2
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v3}, Lcom/google/android/talk/BuddyListCombo;->access$1500(Lcom/google/android/talk/BuddyListCombo;)V

    .line 914
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v3, v0}, Lcom/google/android/talk/BuddyListCombo;->loginToAccount(Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 916
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v3}, Lcom/google/android/talk/BuddyListCombo;->access$1600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/BuddyListCombo$Focus;

    move-result-object v3

    sget-object v4, Lcom/google/android/talk/BuddyListCombo$Focus;->ChatScreen:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-ne v3, v4, :cond_0

    .line 917
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    sget-object v4, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-static {v3, v4}, Lcom/google/android/talk/BuddyListCombo;->access$200(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;)V

    goto :goto_0

    .end local v1           #isSignedIn:Z
    :cond_3
    move v1, v5

    .line 905
    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 923
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
