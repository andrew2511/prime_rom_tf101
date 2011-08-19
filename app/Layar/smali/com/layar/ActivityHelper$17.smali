.class Lcom/layar/ActivityHelper$17;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ActivityHelper;->downloadErrorHandling(Landroid/content/Context;IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ActivityHelper$17;->val$context:Landroid/content/Context;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/layar/ActivityHelper$17;->val$context:Landroid/content/Context;

    .line 422
    const v1, 0x7f090036

    .line 423
    const/4 v2, 0x0

    .line 421
    invoke-static {v0, v1, v2}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lcom/layar/ui/SmartToast;->show()V

    .line 424
    return-void
.end method
