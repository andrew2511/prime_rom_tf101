.class Lcom/layar/UserSettingsActivity$4;
.super Ljava/lang/Object;
.source "UserSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserSettingsActivity;->getSocialChangeListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserSettingsActivity;

.field private final synthetic val$social:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/UserSettingsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserSettingsActivity$4;->this$0:Lcom/layar/UserSettingsActivity;

    iput-object p2, p0, Lcom/layar/UserSettingsActivity$4;->val$social:Ljava/lang/String;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/UserSettingsActivity$4;)Lcom/layar/UserSettingsActivity;
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/layar/UserSettingsActivity$4;->this$0:Lcom/layar/UserSettingsActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/layar/UserSettingsActivity$4;->this$0:Lcom/layar/UserSettingsActivity;

    invoke-static {v0}, Lcom/layar/UserSettingsActivity;->access$4(Lcom/layar/UserSettingsActivity;)Lcom/layar/data/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/UserSettingsActivity$4;->val$social:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/layar/data/social/SocialManager;->isSocialLinked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/layar/UserSettingsActivity$4;->this$0:Lcom/layar/UserSettingsActivity;

    iget-object v1, p0, Lcom/layar/UserSettingsActivity$4;->val$social:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/layar/UserSettingsActivity;->access$5(Lcom/layar/UserSettingsActivity;Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/layar/UserSettingsActivity$4;->this$0:Lcom/layar/UserSettingsActivity;

    iget-object v1, p0, Lcom/layar/UserSettingsActivity$4;->val$social:Ljava/lang/String;

    .line 209
    new-instance v2, Lcom/layar/UserSettingsActivity$4$1;

    iget-object v3, p0, Lcom/layar/UserSettingsActivity$4;->val$social:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/layar/UserSettingsActivity$4$1;-><init>(Lcom/layar/UserSettingsActivity$4;Ljava/lang/String;)V

    .line 208
    invoke-static {v0, v1, v2}, Lcom/layar/util/UiUtils;->dissconnectPromtDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
