.class Lcom/android/inputmethod/latin/UserDictionary$1;
.super Landroid/database/ContentObserver;
.source "UserDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/UserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/UserDictionary;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/UserDictionary;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/inputmethod/latin/UserDictionary$1;->this$0:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "self"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary$1;->this$0:Lcom/android/inputmethod/latin/UserDictionary;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/UserDictionary;->setRequiresReload(Z)V

    .line 54
    return-void
.end method
