.class public abstract Landroid/test/ActivityTestCase;
.super Landroid/test/InstrumentationTestCase;
.source "ActivityTestCase.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Landroid/test/ActivityTestCase;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected scrubClass(Ljava/lang/Class;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 63
    .local p1, testCaseClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 64
    .local v4, fields:[Ljava/lang/reflect/Field;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_b
    if-ge v5, v6, :cond_4d

    aget-object v2, v0, v5

    .line 65
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 66
    .local v3, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_40

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_40

    .line 69
    const/4 v7, 0x1

    :try_start_2c
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    const/4 v7, 0x0

    invoke-virtual {v2, p0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_43

    .line 75
    :goto_33
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_40

    .line 76
    const-string v7, "TestCase"

    const-string v8, "Error: Could not nullify field!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 71
    :catch_43
    move-exception v7

    move-object v1, v7

    .line 72
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "TestCase"

    const-string v8, "Error: Could not nullify field!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 80
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v3           #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4d
    return-void
.end method

.method protected setActivity(Landroid/app/Activity;)V
    .registers 2
    .parameter "testActivity"

    .prologue
    .line 48
    iput-object p1, p0, Landroid/test/ActivityTestCase;->mActivity:Landroid/app/Activity;

    .line 49
    return-void
.end method
