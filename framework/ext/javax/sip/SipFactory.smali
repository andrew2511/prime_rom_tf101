.class public Ljavax/sip/SipFactory;
.super Ljava/lang/Object;
.source "SipFactory.java"


# static fields
.field private static final IP_ADDRESS_PROP:Ljava/lang/String; = "javax.sip.IP_ADDRESS"

.field private static final STACK_NAME_PROP:Ljava/lang/String; = "javax.sip.STACK_NAME"

.field private static sSipFactory:Ljavax/sip/SipFactory;


# instance fields
.field private mNameSipStackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/sip/SipStack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance()Ljavax/sip/SipFactory;
    .registers 2

    .prologue
    .line 18
    const-class v0, Ljavax/sip/SipFactory;

    monitor-enter v0

    :try_start_3
    sget-object v1, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;

    if-nez v1, :cond_e

    new-instance v1, Ljavax/sip/SipFactory;

    invoke-direct {v1}, Ljavax/sip/SipFactory;-><init>()V

    sput-object v1, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;

    .line 19
    :cond_e
    sget-object v1, Ljavax/sip/SipFactory;->sSipFactory:Ljavax/sip/SipFactory;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 18
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public createAddressFactory()Ljavax/sip/address/AddressFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/address/AddressFactoryImpl;

    invoke-direct {v1}, Lgov/nist/javax/sip/address/AddressFactoryImpl;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 68
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 69
    .local v0, e:Ljava/lang/Exception;
    instance-of v1, v0, Ljavax/sip/PeerUnavailableException;

    if-eqz v1, :cond_f

    .line 70
    check-cast v0, Ljavax/sip/PeerUnavailableException;

    .end local v0           #e:Ljava/lang/Exception;
    throw v0

    .line 72
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_f
    new-instance v1, Ljavax/sip/PeerUnavailableException;

    const-string v2, "Failed to create AddressFactory"

    invoke-direct {v1, v2, v0}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createHeaderFactory()Ljavax/sip/header/HeaderFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/HeaderFactoryImpl;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 81
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 82
    .local v0, e:Ljava/lang/Exception;
    instance-of v1, v0, Ljavax/sip/PeerUnavailableException;

    if-eqz v1, :cond_f

    .line 83
    check-cast v0, Ljavax/sip/PeerUnavailableException;

    .end local v0           #e:Ljava/lang/Exception;
    throw v0

    .line 85
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_f
    new-instance v1, Ljavax/sip/PeerUnavailableException;

    const-string v2, "Failed to create HeaderFactory"

    invoke-direct {v1, v2, v0}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createMessageFactory()Ljavax/sip/message/MessageFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;

    invoke-direct {v1}, Lgov/nist/javax/sip/message/MessageFactoryImpl;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 95
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 96
    .local v0, e:Ljava/lang/Exception;
    instance-of v1, v0, Ljavax/sip/PeerUnavailableException;

    if-eqz v1, :cond_f

    .line 97
    check-cast v0, Ljavax/sip/PeerUnavailableException;

    .end local v0           #e:Ljava/lang/Exception;
    throw v0

    .line 99
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_f
    new-instance v1, Ljavax/sip/PeerUnavailableException;

    const-string v2, "Failed to create MessageFactory"

    invoke-direct {v1, v2, v0}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized createSipStack(Ljava/util/Properties;)Ljavax/sip/SipStack;
    .registers 10
    .parameter "properties"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    const-string v4, "javax.sip.IP_ADDRESS"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_1c

    .line 39
    const-string v4, "javax.sip.STACK_NAME"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    if-nez v2, :cond_1c

    .line 41
    new-instance v4, Ljavax/sip/PeerUnavailableException;

    const-string v5, "javax.sip.STACK_NAME property not found"

    invoke-direct {v4, v5}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_19

    .line 37
    .end local v2           #name:Ljava/lang/String;
    :catchall_19
    move-exception v4

    monitor-exit p0

    throw v4

    .line 46
    .restart local v2       #name:Ljava/lang/String;
    :cond_1c
    :try_start_1c
    iget-object v4, p0, Ljavax/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/sip/SipStack;

    .line 47
    .local v3, sipStack:Ljavax/sip/SipStack;
    if-nez v3, :cond_6c

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gov.nist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Ljavax/sip/SipStack;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Impl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_1c .. :try_end_44} :catchall_19

    move-result-object v1

    .line 51
    .local v1, implClassName:Ljava/lang/String;
    :try_start_45
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljavax/sip/SipStack;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/util/Properties;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sipStack:Ljavax/sip/SipStack;
    check-cast v3, Ljavax/sip/SipStack;
    :try_end_67
    .catchall {:try_start_45 .. :try_end_67} :catchall_19
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_67} :catch_6e

    .line 59
    .restart local v3       #sipStack:Ljavax/sip/SipStack;
    :try_start_67
    iget-object v4, p0, Ljavax/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_19

    .line 61
    .end local v1           #implClassName:Ljava/lang/String;
    :cond_6c
    monitor-exit p0

    return-object v3

    .line 55
    .end local v3           #sipStack:Ljavax/sip/SipStack;
    .restart local v1       #implClassName:Ljava/lang/String;
    :catch_6e
    move-exception v4

    move-object v0, v4

    .line 56
    .local v0, e:Ljava/lang/Exception;
    :try_start_70
    new-instance v4, Ljavax/sip/PeerUnavailableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to initiate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_89
    .catchall {:try_start_70 .. :try_end_89} :catchall_19
.end method

.method public declared-synchronized resetFactory()V
    .registers 2

    .prologue
    .line 30
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/sip/SipFactory;->mNameSipStackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 31
    monitor-exit p0

    return-void

    .line 30
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
