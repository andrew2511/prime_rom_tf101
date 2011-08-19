.class public Ljavax/net/ssl/SSLSessionBindingEvent;
.super Ljava/util/EventObject;
.source "SSLSessionBindingEvent.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V
    .registers 3
    .parameter "session"
    .parameter "name"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 42
    iput-object p2, p0, Ljavax/net/ssl/SSLSessionBindingEvent;->name:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Ljavax/net/ssl/SSLSessionBindingEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .registers 1

    .prologue
    .line 62
    iget-object p0, p0, Ljavax/net/ssl/SSLSessionBindingEvent;->source:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljavax/net/ssl/SSLSession;

    return-object p0
.end method
