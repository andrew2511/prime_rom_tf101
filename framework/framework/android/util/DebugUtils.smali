.class public Landroid/util/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter "cls"
    .parameter "out"

    .prologue
    .line 109
    if-nez p0, :cond_8

    .line 110
    const-string v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :goto_7
    return-void

    .line 112
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, simpleName:Ljava/lang/String;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 114
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 115
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 116
    .local v0, end:I
    if-lez v0, :cond_2e

    .line 117
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .end local v0           #end:I
    :cond_2e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const/16 v2, 0x7b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method public static isObjectSelected(Ljava/lang/Object;)Z
    .registers 15
    .parameter "object"

    .prologue
    const/4 v11, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    .local v4, match:Z
    const-string v10, "ANDROID_OBJECT_FILTER"

    invoke-static {v10}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, s:Ljava/lang/String;
    if-eqz v7, :cond_a2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a2

    .line 70
    const-string v10, "@"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, selectors:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a2

    .line 74
    const/4 v2, 0x1

    .local v2, i:I
    :goto_27
    array-length v10, v8

    if-ge v2, v10, :cond_a2

    .line 75
    aget-object v10, v8, v2

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, pair:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 78
    .local v3, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 79
    .local v0, declaredMethod:Ljava/lang/reflect/Method;
    move-object v6, v3

    .line 81
    .local v6, parent:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_38
    :try_start_38
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v5, v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v5, v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v6, v11, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 86
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_73

    if-eqz v0, :cond_38

    .line 88
    :cond_73
    if-eqz v0, :cond_8a

    .line 89
    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 91
    .local v9, value:Ljava/lang/Object;
    if-eqz v9, :cond_8d

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_82
    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v4, v10

    .line 74
    .end local v9           #value:Ljava/lang/Object;
    :cond_8a
    :goto_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 91
    .restart local v9       #value:Ljava/lang/Object;
    :cond_8d
    const-string v10, "null"
    :try_end_8f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_38 .. :try_end_8f} :catch_90
    .catch Ljava/lang/IllegalAccessException; {:try_start_38 .. :try_end_8f} :catch_96
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_38 .. :try_end_8f} :catch_9c

    goto :goto_82

    .line 94
    .end local v9           #value:Ljava/lang/Object;
    :catch_90
    move-exception v10

    move-object v1, v10

    .line 95
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_8a

    .line 96
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_96
    move-exception v10

    move-object v1, v10

    .line 97
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_8a

    .line 98
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_9c
    move-exception v10

    move-object v1, v10

    .line 99
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_8a

    .line 104
    .end local v0           #declaredMethod:Ljava/lang/reflect/Method;
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v2           #i:I
    .end local v3           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #pair:[Ljava/lang/String;
    .end local v6           #parent:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #selectors:[Ljava/lang/String;
    :cond_a2
    return v4
.end method

.method public static shellCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "cmd"
    .parameter "tag"

    .prologue
    const/4 v4, 0x0

    .line 131
    :try_start_1
    new-instance v1, Landroid/util/ShellCommand;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroid/util/ShellCommand;-><init>(Ljava/lang/String;Z)V

    .line 132
    .local v1, sc:Landroid/util/ShellCommand;
    invoke-virtual {v1}, Landroid/util/ShellCommand;->complete()V

    .line 133
    invoke-virtual {v1}, Landroid/util/ShellCommand;->getStdout()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_d} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_36

    move-result-object v2

    .line 141
    .end local v1           #sc:Landroid/util/ShellCommand;
    :goto_e
    return-object v2

    .line 134
    :catch_f
    move-exception v2

    move-object v0, v2

    .line 135
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted executing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v2, v4

    .line 137
    goto :goto_e

    .line 138
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_36
    move-exception v2

    move-object v0, v2

    .line 139
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem launching \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v4

    .line 141
    goto :goto_e
.end method
