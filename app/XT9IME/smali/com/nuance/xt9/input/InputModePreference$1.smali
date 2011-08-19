.class Lcom/nuance/xt9/input/InputModePreference$1;
.super Ljava/lang/Object;
.source "InputModePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/xt9/input/InputModePreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/InputModePreference;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/InputModePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nuance/xt9/input/InputModePreference$1;->this$0:Lcom/nuance/xt9/input/InputModePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nuance/xt9/input/InputModePreference$1;->this$0:Lcom/nuance/xt9/input/InputModePreference;

    iget-object v1, p0, Lcom/nuance/xt9/input/InputModePreference$1;->this$0:Lcom/nuance/xt9/input/InputModePreference;

    invoke-static {v1}, Lcom/nuance/xt9/input/InputModePreference;->access$000(Lcom/nuance/xt9/input/InputModePreference;)Lcom/nuance/xt9/input/EnableButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/xt9/input/EnableButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/InputModePreference;->access$100(Lcom/nuance/xt9/input/InputModePreference;Z)V

    .line 57
    return-void
.end method
