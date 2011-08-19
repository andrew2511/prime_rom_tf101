.class Lcom/ecareme/pixwe/app/App$1;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/app/App;->showToast(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/app/App;

.field private final synthetic val$duration:I

.field private final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/app/App;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/app/App$1;->this$0:Lcom/ecareme/pixwe/app/App;

    iput-object p2, p0, Lcom/ecareme/pixwe/app/App$1;->val$string:Ljava/lang/String;

    iput p3, p0, Lcom/ecareme/pixwe/app/App$1;->val$duration:I

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ecareme/pixwe/app/App$1;->this$0:Lcom/ecareme/pixwe/app/App;

    invoke-static {v0}, Lcom/ecareme/pixwe/app/App;->access$0(Lcom/ecareme/pixwe/app/App;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/app/App$1;->val$string:Ljava/lang/String;

    iget v2, p0, Lcom/ecareme/pixwe/app/App$1;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    return-void
.end method
