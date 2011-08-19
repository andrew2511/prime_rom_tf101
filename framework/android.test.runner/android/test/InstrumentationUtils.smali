.class public Landroid/test/InstrumentationUtils;
.super Ljava/lang/Object;
.source "InstrumentationUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMenuIdentifier(Ljava/lang/Class;Ljava/lang/String;)I
    .registers 6
    .parameter "cls"
    .parameter "identifier"

    .prologue
    .line 38
    const/4 v2, -0x1

    .line 40
    .local v2, id:I
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 41
    .local v1, field:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_e} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_e} :catch_16

    move-result v2

    .line 47
    .end local v1           #field:Ljava/lang/Integer;
    :goto_f
    return v2

    .line 42
    :catch_10
    move-exception v3

    move-object v0, v3

    .line 43
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_f

    .line 44
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_16
    move-exception v3

    move-object v0, v3

    .line 45
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_f
.end method
