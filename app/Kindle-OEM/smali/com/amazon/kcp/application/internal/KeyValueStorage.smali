.class public Lcom/amazon/kcp/application/internal/KeyValueStorage;
.super Ljava/lang/Object;
.source "KeyValueStorage.java"


# static fields
.field private static final instance:Lcom/amazon/kcp/application/internal/KeyValueStorage;


# instance fields
.field private keyValue:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/amazon/kcp/application/internal/KeyValueStorage;

    invoke-direct {v0}, Lcom/amazon/kcp/application/internal/KeyValueStorage;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->instance:Lcom/amazon/kcp/application/internal/KeyValueStorage;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyValue:Ljava/util/Hashtable;

    .line 29
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyValue:Ljava/util/Hashtable;

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/application/internal/KeyValueStorage;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->instance:Lcom/amazon/kcp/application/internal/KeyValueStorage;

    return-object v0
.end method


# virtual methods
.method public getBool(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyValue:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter "key"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyValue:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyValue:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyValue:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public keyExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyValue:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeItemWithKey(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyValue:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public setBool(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyValue:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyValue:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyValue:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/KeyValueStorage;->keyValue:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method
