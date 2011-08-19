.class Lcom/android/contacts/quickcontact/QuickContactWindow$6;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactWindow;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

.field final synthetic val$action:Lcom/android/contacts/quickcontact/Action;

.field final synthetic val$makePrimary:Z


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactWindow;Lcom/android/contacts/quickcontact/Action;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$6;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$6;->val$action:Lcom/android/contacts/quickcontact/Action;

    iput-boolean p3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$6;->val$makePrimary:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1118
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$6;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$1100(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$6;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v5}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$6;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$500(Lcom/android/contacts/quickcontact/QuickContactWindow;Lcom/android/contacts/quickcontact/CheckableImageView;)V

    .line 1126
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$6;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-virtual {v4}, Lcom/android/contacts/quickcontact/QuickContactWindow;->dismiss()V

    .line 1127
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$6;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$300(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/widget/FrameLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1130
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$6;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v4}, Lcom/android/contacts/quickcontact/Action;->getDataId()J

    move-result-wide v0

    .line 1131
    .local v0, dataId:J
    iget-boolean v4, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$6;->val$makePrimary:Z

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 1132
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$6;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$1100(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    .line 1134
    .local v3, serviceIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$6;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$1100(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1136
    .end local v3           #serviceIntent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 1119
    .end local v0           #dataId:J
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1120
    .local v2, e:Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$6;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$1100(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c00eb

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
