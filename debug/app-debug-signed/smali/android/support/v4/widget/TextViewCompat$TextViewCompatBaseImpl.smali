.class Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewCompatBaseImpl"
.end annotation


# static fields
.field private static final LINES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextViewCompatBase"

.field private static sMaxModeField:Ljava/lang/reflect/Field;

.field private static sMaxModeFieldFetched:Z

.field private static sMaximumField:Ljava/lang/reflect/Field;

.field private static sMaximumFieldFetched:Z

.field private static sMinModeField:Ljava/lang/reflect/Field;

.field private static sMinModeFieldFetched:Z

.field private static sMinimumField:Ljava/lang/reflect/Field;

.field private static sMinimumFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v0, v1

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " field."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextViewCompatBase"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    return-object v0
.end method

.method private static retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I
    .locals 3
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 122
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " field."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextViewCompatBase"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public getAutoSizeMaxTextSize(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 222
    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    .line 223
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    .line 225
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 215
    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    .line 216
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    .line 218
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 208
    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    .line 209
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    .line 211
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes(Landroid/widget/TextView;)[I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 229
    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    .line 230
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    .line 232
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 201
    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    .line 202
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroid/support/v4/widget/AutoSizeableTextView;->getAutoSizeTextType()I

    move-result v0

    return v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 171
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLines(Landroid/widget/TextView;)I
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 130
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaxModeFieldFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 131
    const-string v0, "mMaxMode"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaxModeField:Ljava/lang/reflect/Field;

    .line 132
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaxModeFieldFetched:Z

    .line 134
    :cond_0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaxModeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 136
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaximumFieldFetched:Z

    if-nez v0, :cond_1

    .line 137
    const-string v0, "mMaximum"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaximumField:Ljava/lang/reflect/Field;

    .line 138
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaximumFieldFetched:Z

    .line 140
    :cond_1
    sget-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMaximumField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 141
    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    return v0

    .line 144
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getMinLines(Landroid/widget/TextView;)I
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 148
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinModeFieldFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 149
    const-string v0, "mMinMode"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinModeField:Ljava/lang/reflect/Field;

    .line 150
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinModeFieldFetched:Z

    .line 152
    :cond_0
    sget-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinModeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 154
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinimumFieldFetched:Z

    if-nez v0, :cond_1

    .line 155
    const-string v0, "mMinimum"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinimumField:Ljava/lang/reflect/Field;

    .line 156
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinimumFieldFetched:Z

    .line 158
    :cond_1
    sget-object v0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->sMinimumField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 159
    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    return v0

    .line 162
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "autoSizeMinTextSize"    # I
    .param p3, "autoSizeMaxTextSize"    # I
    .param p4, "autoSizeStepGranularity"    # I
    .param p5, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 186
    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    .line 187
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0, p2, p3, p4, p5}, Landroid/support/v4/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 190
    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "presetSizes"    # [I
    .param p3, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 194
    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    .line 195
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0, p2, p3}, Landroid/support/v4/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 198
    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "autoSizeTextType"    # I

    .line 175
    instance-of v0, p1, Landroid/support/v4/widget/AutoSizeableTextView;

    if-eqz v0, :cond_0

    .line 176
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/AutoSizeableTextView;

    invoke-interface {v0, p2}, Landroid/support/v4/widget/AutoSizeableTextView;->setAutoSizeTextTypeWithDefaults(I)V

    .line 178
    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "start"    # Landroid/graphics/drawable/Drawable;
    .param p3, "top"    # Landroid/graphics/drawable/Drawable;
    .param p4, "end"    # Landroid/graphics/drawable/Drawable;
    .param p5, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "start"    # I
    .param p3, "top"    # I
    .param p4, "end"    # I
    .param p5, "bottom"    # I

    .line 106
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 107
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "start"    # Landroid/graphics/drawable/Drawable;
    .param p3, "top"    # Landroid/graphics/drawable/Drawable;
    .param p4, "end"    # Landroid/graphics/drawable/Drawable;
    .param p5, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 100
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 237
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 238
    return-void
.end method

.method public setTextAppearance(Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "resId"    # I

    .line 167
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 168
    return-void
.end method
