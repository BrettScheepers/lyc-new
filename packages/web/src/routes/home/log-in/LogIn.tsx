import { Link } from "react-router-dom";
import { useNavigate } from "react-router";
import { Formik, Form, Field } from "formik";
import * as Yup from "yup";
import { LoadingSpinner } from "../../../shared/LoadingSpinner";
import { useSnackbar } from "notistack";
import { trpc } from "../../../utils/trpc";

const LogIn = () => {
  const { enqueueSnackbar } = useSnackbar();
  const navigate = useNavigate();

  const mutation = trpc.users.logIn.useMutation({
    onError: (error) => {
      return enqueueSnackbar(error.message, {
        variant: "error",
      });
    },
    onSuccess(data) {
      sessionStorage.setItem("accessToken", data.accessToken);
      sessionStorage.setItem("user", JSON.stringify(data.user));
      navigate("/campaigns");
    },
  });

  const handleSubmit = async (values: any) => {
    await mutation.mutateAsync({
      email: values.email,
      password: values.password,
    });
  };

  return (
    <>
      <div className="sm:mx-auto sm:w-full sm:max-w-md">
        <img
          src="./lyc_light_blue.png"
          alt="Love Your City Logo"
          className="mx-auto h-16 w-auto"
        />
        <h2 className="mt-6 text-center text-3xl leading-9 font-extrabold">
          Log In To Your Account
        </h2>
        <p className="mt-2 text-center text-sm leading-5 max-w">
          <Link
            to="/sign-up"
            className="font-medium transition ease-in-out duration-150 link link-primary"
          >
            or register for a new account
          </Link>
        </p>
      </div>
      <div className="mt-8 sm:mx-auto sm:w-full sm:max-w-md">
        <Formik
          initialValues={{ email: "", password: "" }}
          validationSchema={Yup.object({
            email: Yup.string()
              .email("Invalid email address")
              .required("Required"),
            password: Yup.string()
              .min(3)
              .required("Password must contain minimum of 3 characters"),
          })}
          onSubmit={(values) => handleSubmit(values)}
        >
          {({ errors, touched, isSubmitting }) => (
            <Form className="bg-white py-8 px-4 shadow sm:rounded-lg sm:px-10">
              <div>
                <label
                  htmlFor="email"
                  className="block text-sm font-medium leading-5 text-gray-700"
                >
                  Email Address
                  {touched.email && errors.email ? (
                    <span className="text-danger text-sm opacity-80"> *</span>
                  ) : null}
                </label>
                <div className="mt-1 rounded-md shadow-sm">
                  <Field
                    as="input"
                    type="email"
                    name="email"
                    id="email"
                    className="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md placeholder-gray-400 focus:outline-none focus:shadow-primary focus:border-primary transition duration-150 ease-in-out sm:text-sm sm:leading-5"
                    autoComplete="email"
                    autoFocus
                  />
                </div>
                {touched.email && errors.email ? (
                  <div className="text-danger text-sm opacity-80">
                    {errors.email}
                  </div>
                ) : null}
              </div>
              <div className="mt-6">
                <label
                  htmlFor="password"
                  className="block text-sm font-medium leading-5 text-gray-700"
                >
                  Password
                  {touched.password && errors.password ? (
                    <span className="text-danger text-sm opacity-80"> *</span>
                  ) : null}
                </label>
                <div className="mt-1 rounded-md shadow-sm">
                  <Field
                    as="input"
                    type="password"
                    name="password"
                    id="password"
                    className="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md placeholder-gray-400 focus:outline-none focus:shadow-primary focus:border-primary transition duration-150 ease-in-out sm:text-sm sm:leading-5"
                    autoComplete="current-password"
                  />
                </div>
                {touched.password && errors.password ? (
                  <div className="text-danger text-sm opacity-80">
                    {errors.password}
                  </div>
                ) : null}
              </div>
              <div className="mt-6">
                {isSubmitting ? (
                  <span className="w-full flex justify-center">
                    <LoadingSpinner />
                  </span>
                ) : (
                  <span className="block w-full rounded-md shadow-sm">
                    <Field
                      as="input"
                      type="submit"
                      name="commit"
                      className="btn btn-primary w-full"
                    />
                  </span>
                )}
              </div>
            </Form>
          )}
        </Formik>
        <div className="mt-6 text-center text-sm leading-5">
          <Link
            to="/learn-more"
            className="font-medium focus:outline-none focus:underline transition ease-in-out duration-150 link link-primary"
          >
            Want to know more?
          </Link>
        </div>
      </div>
    </>
  );
};

export default LogIn;
