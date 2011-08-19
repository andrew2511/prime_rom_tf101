.class Lcom/layar/Main$TermsLoader$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/Main$TermsLoader;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/Main$TermsLoader;


# direct methods
.method constructor <init>(Lcom/layar/Main$TermsLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/Main$TermsLoader$1;->this$1:Lcom/layar/Main$TermsLoader;

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 605
    invoke-static {}, Lcom/layar/App;->getSensorHelper()Lcom/layar/util/SensorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/util/SensorHelper;->stopSensor()V

    .line 606
    iget-object v0, p0, Lcom/layar/Main$TermsLoader$1;->this$1:Lcom/layar/Main$TermsLoader;

    invoke-static {v0}, Lcom/layar/Main$TermsLoader;->access$3(Lcom/layar/Main$TermsLoader;)Lcom/layar/Main;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/Main;->finish()V

    .line 607
    return-void
.end method
