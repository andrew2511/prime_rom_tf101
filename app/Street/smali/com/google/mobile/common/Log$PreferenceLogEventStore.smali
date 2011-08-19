.class Lcom/google/mobile/common/Log$PreferenceLogEventStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/mobile/common/Log$LogEventStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mobile/common/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLogEventStore"
.end annotation


# instance fields
.field private final preference:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mobile/common/Log$PreferenceLogEventStore;->preference:Ljava/lang/String;

    return-void
.end method

.method private static getPersistentStore()Lcom/google/mobile/common/io/PersistentStore;
    .locals 1

    invoke-static {}, Lcom/google/mobile/common/Config;->getInstance()Lcom/google/mobile/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mobile/common/Config;->getPersistentStore()Lcom/google/mobile/common/io/PersistentStore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public readEvents()[B
    .locals 2

    invoke-static {}, Lcom/google/mobile/common/Log$PreferenceLogEventStore;->getPersistentStore()Lcom/google/mobile/common/io/PersistentStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mobile/common/Log$PreferenceLogEventStore;->preference:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/mobile/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public writeEvents([B)V
    .locals 2

    invoke-static {}, Lcom/google/mobile/common/Log$PreferenceLogEventStore;->getPersistentStore()Lcom/google/mobile/common/io/PersistentStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mobile/common/Log$PreferenceLogEventStore;->preference:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/mobile/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    return-void
.end method
