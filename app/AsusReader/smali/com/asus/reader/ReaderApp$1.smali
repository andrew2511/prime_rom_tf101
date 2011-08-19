.class Lcom/asus/reader/ReaderApp$1;
.super Ljava/lang/Object;
.source "ReaderApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/ReaderApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/ReaderApp;


# direct methods
.method constructor <init>(Lcom/asus/reader/ReaderApp;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/asus/reader/ReaderApp$1;->this$0:Lcom/asus/reader/ReaderApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/asus/reader/ReaderApp$1;->this$0:Lcom/asus/reader/ReaderApp;

    invoke-static {v0}, Lcom/asus/reader/ReaderApp;->access$000(Lcom/asus/reader/ReaderApp;)V

    .line 39
    return-void
.end method
