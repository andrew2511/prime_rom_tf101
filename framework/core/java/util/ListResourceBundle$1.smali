.class Ljava/util/ListResourceBundle$1;
.super Ljava/lang/Object;
.source "ListResourceBundle.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ListResourceBundle;->getKeys()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field local:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field nextElement:Ljava/lang/String;

.field pEnum:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/ListResourceBundle;


# direct methods
.method constructor <init>(Ljava/util/ListResourceBundle;)V
    .registers 3
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Ljava/util/ListResourceBundle$1;->this$0:Ljava/util/ListResourceBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v0, p0, Ljava/util/ListResourceBundle$1;->this$0:Ljava/util/ListResourceBundle;

    iget-object v0, v0, Ljava/util/ListResourceBundle;->table:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ListResourceBundle$1;->local:Ljava/util/Iterator;

    .line 55
    iget-object v0, p0, Ljava/util/ListResourceBundle$1;->this$0:Ljava/util/ListResourceBundle;

    iget-object v0, v0, Ljava/util/ListResourceBundle;->parent:Ljava/util/ResourceBundle;

    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ListResourceBundle$1;->pEnum:Ljava/util/Enumeration;

    return-void
.end method

.method private findNext()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 60
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->nextElement:Ljava/lang/String;

    if-eqz v1, :cond_7

    move v1, v2

    .line 70
    :goto_6
    return v1

    .line 63
    :cond_7
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->pEnum:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 64
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->pEnum:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    .local v0, next:Ljava/lang/String;
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->this$0:Ljava/util/ListResourceBundle;

    iget-object v1, v1, Ljava/util/ListResourceBundle;->table:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 66
    iput-object v0, p0, Ljava/util/ListResourceBundle$1;->nextElement:Ljava/lang/String;

    move v1, v2

    .line 67
    goto :goto_6

    .line 70
    .end local v0           #next:Ljava/lang/String;
    :cond_25
    const/4 v1, 0x0

    goto :goto_6
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Ljava/util/ListResourceBundle$1;->local:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Ljava/util/ListResourceBundle$1;->findNext()Z

    move-result v0

    goto :goto_9
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Ljava/util/ListResourceBundle$1;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .registers 3

    .prologue
    .line 81
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->local:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 82
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->local:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    .line 90
    :goto_11
    return-object v1

    .line 84
    .restart local p0
    :cond_12
    invoke-direct {p0}, Ljava/util/ListResourceBundle$1;->findNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 85
    iget-object v0, p0, Ljava/util/ListResourceBundle$1;->nextElement:Ljava/lang/String;

    .line 86
    .local v0, result:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/ListResourceBundle$1;->nextElement:Ljava/lang/String;

    move-object v1, v0

    .line 87
    goto :goto_11

    .line 90
    .end local v0           #result:Ljava/lang/String;
    :cond_1f
    iget-object v1, p0, Ljava/util/ListResourceBundle$1;->pEnum:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_11
.end method
