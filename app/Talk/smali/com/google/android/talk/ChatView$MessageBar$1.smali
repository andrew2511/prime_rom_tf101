.class Lcom/google/android/talk/ChatView$MessageBar$1;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView$MessageBar;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/ChatView$MessageBar;

.field final synthetic val$popupMenu:Landroid/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$MessageBar;Landroid/widget/PopupMenu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2957
    iput-object p1, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iput-object p2, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    .line 2961
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v11, v11, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v11}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v11

    const-string v12, "input_method"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 2963
    .local v5, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v11, v11, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v11}, Lcom/google/android/talk/ChatView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2965
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    .line 2966
    .local v8, m:Landroid/view/Menu;
    invoke-interface {v8}, Landroid/view/Menu;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int v2, v11, v12

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 2967
    invoke-interface {v8, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2968
    .local v6, item:Landroid/view/MenuItem;
    const/4 v11, 0x1

    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2969
    const/4 v11, 0x1

    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2966
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2971
    .end local v6           #item:Landroid/view/MenuItem;
    :cond_0
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v11, v11, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v11}, Lcom/google/android/talk/ChatView;->isGroupChat()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2972
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-static {v11}, Lcom/google/android/talk/ChatView$MessageBar;->access$6400(Lcom/google/android/talk/ChatView$MessageBar;)[Ljava/lang/Integer;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Integer;
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v7, :cond_1

    aget-object v11, v0, v3

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2973
    .local v4, id:I
    invoke-interface {v8, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2974
    .restart local v6       #item:Landroid/view/MenuItem;
    const/4 v11, 0x0

    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2975
    const/4 v11, 0x0

    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2972
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2978
    .end local v0           #arr$:[Ljava/lang/Integer;
    .end local v3           #i$:I
    .end local v4           #id:I
    .end local v6           #item:Landroid/view/MenuItem;
    .end local v7           #len$:I
    :cond_1
    const v11, 0x7f1000c2

    invoke-interface {v8, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 2980
    .local v9, otr:Landroid/view/MenuItem;
    :try_start_0
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v11, v11, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v11}, Lcom/google/android/talk/ChatView;->access$5300(Lcom/google/android/talk/ChatView;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/android/gtalkservice/IChatSession;->isOffTheRecord()Z

    move-result v11

    if-eqz v11, :cond_2

    const v11, 0x7f0c0063

    move v10, v11

    .line 2983
    .local v10, string:I
    :goto_2
    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2984
    const/4 v11, 0x1

    invoke-interface {v9, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2988
    .end local v10           #string:I
    :goto_3
    iget-object v11, p0, Lcom/google/android/talk/ChatView$MessageBar$1;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->show()V

    .line 2989
    return-void

    .line 2980
    :cond_2
    const v11, 0x7f0c0064

    move v10, v11

    goto :goto_2

    .line 2985
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 2986
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method
