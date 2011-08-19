.class public Lnet/oauth/OAuthConsumer;
.super Ljava/lang/Object;
.source "OAuthConsumer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1f58179f823167d4L


# instance fields
.field public final callbackURL:Ljava/lang/String;

.field public final consumerKey:Ljava/lang/String;

.field public final consumerSecret:Ljava/lang/String;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final serviceProvider:Lnet/oauth/OAuthServiceProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/oauth/OAuthServiceProvider;)V
    .locals 1
    .parameter "callbackURL"
    .parameter "consumerKey"
    .parameter "consumerSecret"
    .parameter "serviceProvider"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oauth/OAuthConsumer;->properties:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lnet/oauth/OAuthConsumer;->callbackURL:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lnet/oauth/OAuthConsumer;->consumerKey:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lnet/oauth/OAuthConsumer;->consumerSecret:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lnet/oauth/OAuthConsumer;->serviceProvider:Lnet/oauth/OAuthServiceProvider;

    .line 46
    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 51
    iget-object v0, p0, Lnet/oauth/OAuthConsumer;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
