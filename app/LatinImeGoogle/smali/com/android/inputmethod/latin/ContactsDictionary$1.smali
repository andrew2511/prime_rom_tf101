.class Lcom/android/inputmethod/latin/ContactsDictionary$1;
.super Landroid/database/ContentObserver;
.source "ContactsDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/ContactsDictionary;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/ContactsDictionary;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/ContactsDictionary;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/inputmethod/latin/ContactsDictionary$1;->this$0:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "self"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary$1;->this$0:Lcom/android/inputmethod/latin/ContactsDictionary;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/ContactsDictionary;->setRequiresReload(Z)V

    .line 61
    return-void
.end method
