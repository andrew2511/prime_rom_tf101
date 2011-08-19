.class public abstract Landroid/test/ProviderTestCase2;
.super Landroid/test/AndroidTestCase;
.source "ProviderTestCase2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/ProviderTestCase2$1;,
        Landroid/test/ProviderTestCase2$MockContext2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/ContentProvider;",
        ">",
        "Landroid/test/AndroidTestCase;"
    }
.end annotation


# instance fields
.field private mProvider:Landroid/content/ContentProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mProviderAuthority:Ljava/lang/String;

.field mProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mProviderContext:Landroid/test/IsolatedContext;

.field private mResolver:Landroid/test/mock/MockContentResolver;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "providerAuthority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Landroid/test/ProviderTestCase2;,"Landroid/test/ProviderTestCase2<TT;>;"
    .local p1, providerClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    .line 103
    iput-object p1, p0, Landroid/test/ProviderTestCase2;->mProviderClass:Ljava/lang/Class;

    .line 104
    iput-object p2, p0, Landroid/test/ProviderTestCase2;->mProviderAuthority:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public static newResolverWithContentProviderFromSql(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentResolver;
    .registers 12
    .parameter "targetContext"
    .parameter "filenamePrefix"
    .parameter
    .parameter "authority"
    .parameter "databaseName"
    .parameter "databaseVersion"
    .parameter "sql"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/ContentProvider;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/ContentResolver;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 213
    .local p2, providerClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v2, Landroid/test/mock/MockContentResolver;

    invoke-direct {v2}, Landroid/test/mock/MockContentResolver;-><init>()V

    .line 214
    .local v2, resolver:Landroid/test/mock/MockContentResolver;
    new-instance v3, Landroid/test/RenamingDelegatingContext;

    new-instance v4, Landroid/test/mock/MockContext;

    invoke-direct {v4}, Landroid/test/mock/MockContext;-><init>()V

    invoke-direct {v3, v4, p0, p1}, Landroid/test/RenamingDelegatingContext;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    .local v3, targetContextWrapper:Landroid/test/RenamingDelegatingContext;
    new-instance v0, Landroid/test/IsolatedContext;

    invoke-direct {v0, v2, v3}, Landroid/test/IsolatedContext;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    .line 219
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p4, p5, p6}, Landroid/database/DatabaseUtils;->createDbFromSqlStatements(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProvider;

    .line 222
    .local v1, provider:Landroid/content/ContentProvider;,"TT;"
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 223
    invoke-virtual {v2, p3, v1}, Landroid/test/mock/MockContentResolver;->addProvider(Ljava/lang/String;Landroid/content/ContentProvider;)V

    .line 225
    return-object v2
.end method


# virtual methods
.method public getMockContentResolver()Landroid/test/mock/MockContentResolver;
    .registers 2

    .prologue
    .line 167
    .local p0, this:Landroid/test/ProviderTestCase2;,"Landroid/test/ProviderTestCase2<TT;>;"
    iget-object v0, p0, Landroid/test/ProviderTestCase2;->mResolver:Landroid/test/mock/MockContentResolver;

    return-object v0
.end method

.method public getMockContext()Landroid/test/IsolatedContext;
    .registers 2

    .prologue
    .line 175
    .local p0, this:Landroid/test/ProviderTestCase2;,"Landroid/test/ProviderTestCase2<TT;>;"
    iget-object v0, p0, Landroid/test/ProviderTestCase2;->mProviderContext:Landroid/test/IsolatedContext;

    return-object v0
.end method

.method public getProvider()Landroid/content/ContentProvider;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, this:Landroid/test/ProviderTestCase2;,"Landroid/test/ProviderTestCase2<TT;>;"
    iget-object v0, p0, Landroid/test/ProviderTestCase2;->mProvider:Landroid/content/ContentProvider;

    return-object v0
.end method

.method protected setUp()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/test/ProviderTestCase2;,"Landroid/test/ProviderTestCase2<TT;>;"
    const/4 v5, 0x0

    .line 130
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 132
    new-instance v2, Landroid/test/mock/MockContentResolver;

    invoke-direct {v2}, Landroid/test/mock/MockContentResolver;-><init>()V

    iput-object v2, p0, Landroid/test/ProviderTestCase2;->mResolver:Landroid/test/mock/MockContentResolver;

    .line 133
    const-string v0, "test."

    .line 134
    .local v0, filenamePrefix:Ljava/lang/String;
    new-instance v1, Landroid/test/RenamingDelegatingContext;

    new-instance v2, Landroid/test/ProviderTestCase2$MockContext2;

    invoke-direct {v2, p0, v5}, Landroid/test/ProviderTestCase2$MockContext2;-><init>(Landroid/test/ProviderTestCase2;Landroid/test/ProviderTestCase2$1;)V

    invoke-virtual {p0}, Landroid/test/ProviderTestCase2;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "test."

    invoke-direct {v1, v2, v3, v4}, Landroid/test/RenamingDelegatingContext;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    .local v1, targetContextWrapper:Landroid/test/RenamingDelegatingContext;
    new-instance v2, Landroid/test/IsolatedContext;

    iget-object v3, p0, Landroid/test/ProviderTestCase2;->mResolver:Landroid/test/mock/MockContentResolver;

    invoke-direct {v2, v3, v1}, Landroid/test/IsolatedContext;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/test/ProviderTestCase2;->mProviderContext:Landroid/test/IsolatedContext;

    .line 142
    iget-object v2, p0, Landroid/test/ProviderTestCase2;->mProviderClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProvider;

    iput-object v2, p0, Landroid/test/ProviderTestCase2;->mProvider:Landroid/content/ContentProvider;

    .line 143
    iget-object v2, p0, Landroid/test/ProviderTestCase2;->mProvider:Landroid/content/ContentProvider;

    iget-object v3, p0, Landroid/test/ProviderTestCase2;->mProviderContext:Landroid/test/IsolatedContext;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 144
    iget-object v2, p0, Landroid/test/ProviderTestCase2;->mProvider:Landroid/content/ContentProvider;

    invoke-static {v2}, Landroid/test/ProviderTestCase2;->assertNotNull(Ljava/lang/Object;)V

    .line 145
    iget-object v2, p0, Landroid/test/ProviderTestCase2;->mResolver:Landroid/test/mock/MockContentResolver;

    iget-object v3, p0, Landroid/test/ProviderTestCase2;->mProviderAuthority:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/test/ProviderTestCase2;->getProvider()Landroid/content/ContentProvider;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/test/mock/MockContentResolver;->addProvider(Ljava/lang/String;Landroid/content/ContentProvider;)V

    .line 146
    return-void
.end method

.method protected tearDown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Landroid/test/ProviderTestCase2;,"Landroid/test/ProviderTestCase2<TT;>;"
    iget-object v0, p0, Landroid/test/ProviderTestCase2;->mProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->shutdown()V

    .line 157
    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    .line 158
    return-void
.end method
