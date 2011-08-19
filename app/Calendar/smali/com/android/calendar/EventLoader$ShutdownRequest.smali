.class Lcom/android/calendar/EventLoader$ShutdownRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lcom/android/calendar/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShutdownRequest"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/EventLoader$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/calendar/EventLoader$ShutdownRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public processRequest(Lcom/android/calendar/EventLoader;)V
    .locals 0
    .parameter "eventLoader"

    .prologue
    .line 49
    return-void
.end method

.method public skipRequest(Lcom/android/calendar/EventLoader;)V
    .locals 0
    .parameter "eventLoader"

    .prologue
    .line 52
    return-void
.end method
