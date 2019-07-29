<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="pt-0" id="wrapper">
	<#if show_header>
		<header id="banner">
			<div class="navbar navbar-classic navbar-top py-2">
				<div class="container user-personal-bar">
					<div class="align-items-center autofit-row">
						<#if show_language_selector>
							<div class="autofit-col autofit-col-expand language-selector mr-1 mr-md-2">
								<#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />

								<@liferay_portlet["runtime"]
									defaultPreferences=preferences
									portletProviderAction=portletProviderAction.VIEW
									portletProviderClassName="com.liferay.portal.kernel.servlet.taglib.ui.LanguageEntry"
								/>
							</div>
						</#if>

						<div class="social-icons mr-1 mr-md-2 flex-shrink-0">
							<#if rss_url?has_content>
								<a class="p-1 p-md-2 social-icon" href="${rss_url}" target="_blank"><span class="icon icon-large icon-rss"></span></a>
							</#if>
							<#if twitter_url?has_content>
								<a class="p-1 p-md-2 social-icon" href="${twitter_url}" target="_blank"><span class="icon icon-large icon-twitter"></span></a>
							</#if>
							<#if facebook_url?has_content>
								<a class="p-1 p-md-2 social-icon" href="${facebook_url}" target="_blank"><span class="icon icon-large icon-facebook"></span></a>
							</#if>
							<#if youtube_url?has_content>
								<a class="p-1 p-md-2 social-icon" href="${youtube_url}" target="_blank"><span class="icon icon-large icon-youtube"></span></a>
							</#if>
							<#if instagram_url?has_content>
								<a class="p-1 p-md-2 social-icon" href="${instagram_url}" target="_blank"><span class="icon icon-large icon-instagram"></span></a>
							</#if>
						</div>

						<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />

						<div class="autofit-col flex-grow-1 flex-shrink-1">
							<#if show_header_search>
								<div class="justify-content-md-end mr-2 mr-md-4 navbar-form" role="search">
									<@liferay.search_bar default_preferences="${preferences}" />
								</div>
							</#if>
						</div>

						<div class="autofit-col">
							<@liferay.user_personal_bar />
						</div>
					</div>
				</div>
			</div>

			<div class="navbar navbar-classic navbar-expand-md navbar-light py-2 site-navigation">
				<div class="container">
					<a class="${logo_css_class} align-items-center d-md-inline-flex d-sm-none d-none logo-md mr-4" href="${site_default_url}" title="<@liferay.language_format arguments="" key="go-to-x" />">
						<img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />

						<#if show_site_name>
							<h1 class="font-weight-bold h2 mb-0 text-dark">${site_name}</h1>
						</#if>
					</a>
					
					<a class="${logo_css_class} align-items-center d-inline-flex d-md-none logo-xs mr-4" href="${site_default_url}" rel="nofollow">
						<img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />

						<#if show_site_name>
							<h1 class="font-weight-bold h2 mb-0 text-dark">${site_name}</h1>
						</#if>
					</a>

					<#include "${full_templates_path}/navigation.ftl" />
				</div>
			</div>
		</header>
	</#if>

	<section class="${portal_content_css_class}" id="content">
		<h1 class="sr-only">${the_title}</h1>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

	<#if show_footer>
		<footer class="footer" id="footer" role="contentinfo">
			<div class="container">
				<div class="row">
					<div class="align-items-center col-md-4 d-flex justify-content-md-start justify-content-center">
						<span>
							<@liferay.language key="powered-by" />

							<a class="text-white" href="http://www.liferay.com" rel="external">Liferay</a>
						</span>
					</div>

					<div class="col-md-8 d-flex justify-content-md-start justify-content-center">
						<#if show_footer_navigation>
							<#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />

							<@liferay_portlet["runtime"]
								defaultPreferences=preferences
								portletName="com_liferay_site_navigation_menu_web_portlet_SiteNavigationMenuPortlet"
							/>
						</#if>
					</div>
				</div>
			</div>
		</footer>
	</#if>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>