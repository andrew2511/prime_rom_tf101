.class Lcom/layar/ActivityHelper$15;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ActivityHelper;

.field private final synthetic val$finishOnError:Z


# direct methods
.method constructor <init>(Lcom/layar/ActivityHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ActivityHelper$15;->this$0:Lcom/layar/ActivityHelper;

    iput-boolean p2, p0, Lcom/layar/ActivityHelper$15;->val$finishOnError:Z

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/layar/ActivityHelper$15;->this$0:Lcom/layar/ActivityHelper;

    invoke-static {v0}, Lcom/layar/ActivityHelper;->access$0(Lcom/layar/ActivityHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 376
    const v1, 0x7f090036

    .line 377
    const/4 v2, 0x0

    .line 375
    invoke-static {v0, v1, v2}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/layar/ui/SmartToast;->show()V

    .line 378
    iget-boolean v0, p0, Lcom/layar/ActivityHelper$15;->val$finishOnError:Z

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/layar/ActivityHelper$15;->this$0:Lcom/layar/ActivityHelper;

    invoke-static {v0}, Lcom/layar/ActivityHelper;->access$0(Lcom/layar/ActivityHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 380
    :cond_0
    return-void
.end method
