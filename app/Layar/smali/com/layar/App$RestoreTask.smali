.class Lcom/layar/App$RestoreTask;
.super Landroid/os/AsyncTask;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/App;


# direct methods
.method private constructor <init>(Lcom/layar/App;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/layar/App$RestoreTask;->this$0:Lcom/layar/App;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/App;Lcom/layar/App$RestoreTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/layar/App$RestoreTask;-><init>(Lcom/layar/App;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/App$RestoreTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 264
    invoke-static {}, Lcom/layar/App;->getVariantsManager()Lcom/layar/data/variants/VariantsManager;

    move-result-object v0

    .line 265
    .local v0, variantsManager:Lcom/layar/data/variants/VariantsManager;
    invoke-virtual {v0}, Lcom/layar/data/variants/VariantsManager;->loadVariants()Lcom/layar/data/variants/VariantsResponse;

    .line 266
    const/4 v1, 0x0

    return-object v1
.end method
