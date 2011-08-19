.class abstract Lcom/infraware/evengine/EvTaskObj;
.super Ljava/lang/Object;
.source "EvTaskObj.java"


# instance fields
.field protected Native:Lcom/infraware/evengine/EvNative;


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvNative;)V
    .locals 0
    .parameter "a_Native"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/infraware/evengine/EvTaskObj;->Native:Lcom/infraware/evengine/EvNative;

    .line 10
    return-void
.end method


# virtual methods
.method abstract doTask()V
.end method
